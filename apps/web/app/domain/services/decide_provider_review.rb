# frozen_string_literal: true

module Services
  # ST-001: in Prüfung -> verifiziert/aktiv oder abgelehnt (Berechtigung: Kuration).
  # DO-006 Prüfnachweis und DO-024 Auditeintrag werden in derselben Transaktion
  # geschrieben. Schlägt ein Teil fehl, entsteht KEIN Prüfergebnis (AC-032/EXC-014).
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

      unless ProviderLifecycle.allowed?(@provider.status, target, role: @actor.role)
        return Result.new(ok?: false, error: "Übergang nicht zulässig (ST-001).")
      end

      return Result.new(ok?: false, error: "Ein Prüfvermerk ist erforderlich.") if @note.strip.blank?

      from = @provider.status
      review = nil
      ActiveRecord::Base.transaction do
        review = ProviderReview.create!(
          provider: @provider, decided_by: @actor, outcome: @outcome, note: @note,
          decided_at: Time.current,
          register_check:      truthy(@checks[:register_check]),
          identity_check:      truthy(@checks[:identity_check]),
          bank_account_check:  truthy(@checks[:bank_account_check]),
          qualification_check: truthy(@checks[:qualification_check])
        )
        @provider.update!(status: target)
        AuditTrail.record!(actor: @actor, subject: @provider,
                           action: "provider.review_decided",
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
    rescue ActiveRecord::RecordInvalid => e
      Result.new(ok?: false, error: e.message)
    end

    private

    def truthy(value) = %w[1 true yes on].include?(value.to_s.downcase)
  end
end
