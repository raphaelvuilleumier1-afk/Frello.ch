# frozen_string_literal: true

module Services
  # ST-001: in Prüfung -> verifiziert/aktiv oder abgelehnt (Berechtigung: Kuration).
  #
  # Nebenläufigkeit: Der Anbieter wird innerhalb der Transaktion gesperrt und neu
  # geladen; erst danach wird der Übergang geprüft. DO-006, Zustandswechsel und
  # DO-024 entstehen gemeinsam oder gar nicht (AC-032/EXC-014).
  class DecideProviderReview
    Result = Struct.new(:ok?, :error, :review, keyword_init: true)

    OUTCOME_TO_STATE = { "verified" => "verified_active", "rejected" => "rejected" }.freeze

    def initialize(provider:, actor:, outcome:, note:, checks: {})
      @provider = provider
      @actor = actor
      @outcome = outcome.to_s
      @note = note.to_s
      @checks = checks
    end

    def call
      target = OUTCOME_TO_STATE[@outcome]
      return Result.new(ok?: false, error: "Unbekanntes Prüfergebnis.") if target.nil?
      return Result.new(ok?: false, error: "Ein Prüfvermerk ist erforderlich.") if @note.strip.blank?

      review = nil
      ActiveRecord::Base.transaction do
        @provider.lock!
        unless ProviderLifecycle.allowed?(@provider.status, target, role: @actor.role)
          raise Rejection, "Übergang nicht zulässig (ST-001)."
        end

        from = @provider.status
        now = Time.current
        review = ProviderReview.create!(
          provider: @provider, decided_by: @actor, outcome: @outcome, note: @note,
          decided_at: now,
          register_check:      truthy(@checks[:register_check]),
          identity_check:      truthy(@checks[:identity_check]),
          bank_account_check:  truthy(@checks[:bank_account_check]),
          qualification_check: truthy(@checks[:qualification_check])
        )
        @provider.update!(status: target)
        AuditTrail.record!(actor: @actor, subject: @provider,
                           action: "provider.review_decided", occurred_at: now,
                           from_state: from, to_state: target, note: @note,
                           details: { "outcome" => @outcome, "rule" => "BR-001",
                                      "state_model" => "ST-001", "review_id" => review.id,
                                      "checks_recorded_manually" => {
                                        "register" => review.register_check,
                                        "identity" => review.identity_check,
                                        "bank_account" => review.bank_account_check,
                                        "qualification" => review.qualification_check
                                      } })
      end
      Result.new(ok?: true, review: review)
    rescue Rejection => e
      @provider.reload if @provider.persisted?
      Result.new(ok?: false, error: e.message)
    rescue ActiveRecord::RecordInvalid => e
      @provider.reload if @provider.persisted?
      Result.new(ok?: false, error: e.message)
    end

    private

    def truthy(value) = %w[1 true yes on].include?(value.to_s.downcase)
  end
end
