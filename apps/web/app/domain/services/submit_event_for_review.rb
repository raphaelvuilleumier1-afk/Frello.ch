# frozen_string_literal: true

module Services
  # ST-002: Entwurf -> in Prüfung.
  # Ein zur Überarbeitung zurückgegebenes Event kann NICHT erneut eingereicht
  # werden; dieser Übergang ist mangels Fachquelle gesperrt (siehe EventLifecycle).
  #
  # BR-005 / EXC-013: Die Einreichung verlangt vollständige erforderliche Angaben.
  # AC-032: Nur ein verifizierter Anbieter darf einreichen.
  #
  # Nebenläufigkeit: Event gesperrt (FOR UPDATE) und neu geladen, Anbieter mit
  # FOR SHARE gelesen; alle Prüfungen danach am aktuellen Stand.
  class SubmitEventForReview
    Result = Struct.new(:ok?, :error, :missing, keyword_init: true)

    def initialize(event:, actor:)
      @event = event
      @actor = actor
    end

    def call
      ActiveRecord::Base.transaction do
        @event.lock!
        provider = Provider.lock("FOR SHARE").find(@event.provider_id)
        @event.association(:provider).reset

        unless @actor.provider_role? && @actor.provider_id == @event.provider_id
          raise Rejection, "Nicht berechtigt."
        end
        # AC-032: Einreichen erst nach erfolgreicher Verifikation.
        raise Rejection, "Der Anbieter ist nicht verifiziert (AC-032)." unless provider.verified?
        unless EventLifecycle.allowed?(@event.status, "in_review", role: @actor.role)
          raise Rejection, "Übergang nicht zulässig (ST-002)."
        end

        completeness = @event.completeness
        unless completeness.submittable?
          raise Rejection.new("Pflichtangaben fehlen (BR-005 / EXC-013).", missing: completeness.missing)
        end

        from = @event.status
        @event.update!(status: "in_review")
        AuditTrail.record!(actor: @actor, subject: @event,
                           action: "event.submitted_for_review",
                           from_state: from, to_state: "in_review",
                           details: { "rule" => "BR-004/BR-005", "state_model" => "ST-002",
                                      "completeness" => completeness.snapshot })
      end
      Result.new(ok?: true)
    rescue Rejection => e
      @event.reload if @event.persisted?
      Result.new(ok?: false, error: e.message, missing: e.missing)
    rescue ActiveRecord::RecordInvalid => e
      @event.reload if @event.persisted?
      Result.new(ok?: false, error: e.message)
    end
  end
end
