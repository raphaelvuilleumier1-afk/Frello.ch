# frozen_string_literal: true

module Services
  # ST-002: in Prüfung -> freigegeben | abgelehnt | zur Überarbeitung zurückgegeben.
  #
  # D-33 / BR-004 / AC-035: Jeder Entscheid wird von einer Person der Kuration
  # getroffen. Es gibt keinen Weg, ein Event ohne diesen Entscheid in den Katalog
  # zu bringen, und keine automatisierte oder KI-basierte Freigabe.
  #
  # BR-005: Eine Freigabe ist bei fehlenden Pflichtangaben ausgeschlossen –
  # auch dann, wenn die Kuration sie anfordert.
  #
  # DO-008 Prüfergebnis und DO-024 Auditeintrag entstehen in derselben
  # Transaktion wie der Zustandswechsel.
  class DecideEventReview
    Result = Struct.new(:ok?, :error, :review, keyword_init: true)

    OUTCOME_TO_STATE = {
      "released" => "released",
      "rejected" => "rejected",
      "returned" => "returned_for_revision"
    }.freeze

    def initialize(event:, actor:, outcome:, note:)
      @event = event
      @actor = actor
      @outcome = outcome.to_s
      @note = note.to_s
    end

    def call
      target = OUTCOME_TO_STATE[@outcome]
      return Result.new(ok?: false, error: "Unbekanntes Prüfergebnis.") if target.nil?

      unless @actor.curation?
        return Result.new(ok?: false, error: "Nur die Frello-Kuration entscheidet (D-33).")
      end

      unless EventLifecycle.allowed?(@event.status, target, role: @actor.role)
        return Result.new(ok?: false, error: "Übergang nicht zulässig (ST-002).")
      end

      return Result.new(ok?: false, error: "Ein Prüfvermerk ist erforderlich.") if @note.strip.blank?

      completeness = @event.completeness
      if target == "released" && !completeness.submittable?
        # BR-005 / AC-035: ohne vollständige Pflichtangaben keine Veröffentlichung.
        return Result.new(ok?: false,
                          error: "Freigabe nicht möglich: Pflichtangaben fehlen (BR-005).")
      end

      from = @event.status
      review = nil
      ActiveRecord::Base.transaction do
        review = EventReview.create!(
          event: @event, decided_by: @actor, outcome: @outcome, note: @note,
          decided_at: Time.current, completeness_snapshot: completeness.snapshot
        )
        attrs = { status: target }
        attrs[:released_at] = Time.current if target == "released"
        @event.update!(attrs)
        AuditTrail.record!(actor: @actor, subject: @event,
                           action: "event.review_decided",
                           from_state: from, to_state: target, note: @note,
                           details: { "outcome" => @outcome, "rule" => "BR-004",
                                      "state_model" => "ST-002", "review_id" => review.id,
                                      "decision_mode" => "manuell durch Person (D-33)" })
      end
      Result.new(ok?: true, review: review)
    rescue ActiveRecord::RecordInvalid => e
      Result.new(ok?: false, error: e.message)
    end
  end
end
