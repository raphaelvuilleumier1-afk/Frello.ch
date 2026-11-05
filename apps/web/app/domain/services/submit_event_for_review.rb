# frozen_string_literal: true

module Services
  # ST-002: Entwurf -> in Prüfung und zurückgegeben -> in Prüfung.
  #
  # BR-005 / EXC-013: Die Einreichung verlangt vollständige erforderliche Angaben.
  # Unvollständige Entwürfe dürfen gespeichert, aber nicht eingereicht werden.
  #
  # AC-032: Nur ein verifizierter Anbieter darf einreichen.
  class SubmitEventForReview
    Result = Struct.new(:ok?, :error, :missing, keyword_init: true)

    def initialize(event:, actor:)
      @event = event
      @actor = actor
    end

    def call
      unless @actor.provider_role? && @actor.provider_id == @event.provider_id
        return Result.new(ok?: false, error: "Nicht berechtigt.")
      end

      unless @event.provider.verified?
        # AC-032: Einreichen erst nach erfolgreicher Verifikation.
        return Result.new(ok?: false, error: "Der Anbieter ist nicht verifiziert (AC-032).")
      end

      unless EventLifecycle.allowed?(@event.status, "in_review", role: @actor.role)
        return Result.new(ok?: false, error: "Übergang nicht zulässig (ST-002).")
      end

      completeness = @event.completeness
      unless completeness.submittable?
        return Result.new(ok?: false, missing: completeness.missing,
                          error: "Pflichtangaben fehlen (BR-005 / EXC-013).")
      end

      from = @event.status
      ActiveRecord::Base.transaction do
        @event.update!(status: "in_review")
        AuditTrail.record!(actor: @actor, subject: @event,
                           action: "event.submitted_for_review",
                           from_state: from, to_state: "in_review",
                           details: { "rule" => "BR-004/BR-005", "state_model" => "ST-002",
                                      "completeness" => completeness.snapshot })
      end
      Result.new(ok?: true)
    rescue ActiveRecord::RecordInvalid => e
      Result.new(ok?: false, error: e.message)
    end
  end
end
