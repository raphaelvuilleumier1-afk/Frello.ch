# frozen_string_literal: true

module Services
  # ST-001: registriert -> in Prüfung.
  # Auslöser laut ST-001: "Anbieter reicht Verifikation ein", Berechtigung: Anbieter.
  #
  # Zulässig ist ausschliesslich ein Anbieter-Testkonto für den IHM ZUGEORDNETEN
  # Anbieter. Fremde Anbieterkonten und die Kuration sind nicht berechtigt.
  #
  # Nebenläufigkeit: Anbieter gesperrt (FOR UPDATE) und neu geladen; eine doppelte
  # Einreichung wartet auf die Sperre und wird danach abgewiesen.
  class SubmitProviderForReview
    Result = Struct.new(:ok?, :error, keyword_init: true)

    def initialize(provider:, actor:)
      @provider = provider
      @actor = actor
    end

    def call
      unless @actor&.provider_role? && @actor.provider_id == @provider&.id
        return Result.new(ok?: false, error: "Nicht berechtigt (ST-001: nur der zugeordnete Anbieter).")
      end

      ActiveRecord::Base.transaction do
        @provider.lock!
        unless ProviderLifecycle.allowed?(@provider.status, "in_review", role: @actor.role)
          raise Rejection, "Übergang nicht zulässig (ST-001)."
        end

        from = @provider.status
        @provider.update!(status: "in_review")
        AuditTrail.record!(actor: @actor, subject: @provider,
                           action: "provider.submitted_for_review",
                           from_state: from, to_state: "in_review",
                           details: { "rule" => "BR-001", "state_model" => "ST-001" })
      end
      Result.new(ok?: true)
    rescue Rejection => e
      @provider.reload if @provider.persisted?
      Result.new(ok?: false, error: e.message)
    rescue ActiveRecord::RecordInvalid => e
      @provider.reload if @provider.persisted?
      Result.new(ok?: false, error: e.message)
    end
  end
end
