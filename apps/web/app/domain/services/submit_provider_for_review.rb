# frozen_string_literal: true

module Services
  # ST-001: registriert -> in Prüfung.
  # Auslöser laut ST-001: "Anbieter reicht Verifikation ein", Berechtigung: Anbieter.
  #
  # Zulässig ist ausschliesslich ein Anbieter-Testkonto für den IHM ZUGEORDNETEN
  # Anbieter. Fremde Anbieterkonten und die Kuration sind nicht berechtigt.
  class SubmitProviderForReview
    Result = Struct.new(:ok?, :error, keyword_init: true)

    def initialize(provider:, actor:)
      @provider = provider
      @actor = actor
    end

    def call
      unless @actor&.provider_role? && @actor.provider_id == @provider.id
        return Result.new(ok?: false, error: "Nicht berechtigt (ST-001: nur der zugeordnete Anbieter).")
      end

      unless ProviderLifecycle.allowed?(@provider.status, "in_review", role: @actor.role)
        return Result.new(ok?: false, error: "Übergang nicht zulässig (ST-001).")
      end

      from = @provider.status
      ActiveRecord::Base.transaction do
        @provider.update!(status: "in_review")
        AuditTrail.record!(actor: @actor, subject: @provider,
                           action: "provider.submitted_for_review",
                           from_state: from, to_state: "in_review",
                           details: { "rule" => "BR-001", "state_model" => "ST-001" })
      end
      Result.new(ok?: true)
    rescue ActiveRecord::RecordInvalid => e
      Result.new(ok?: false, error: e.message)
    end
  end
end
