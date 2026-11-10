# frozen_string_literal: true

# EventCompleteness – Vollstaendigkeitspruefung des D-31-Pflichtfeldsatzes.
#
# Fachliche Grundlage:
#   BR-005 (docs/product/05_BUSINESS_RULES.md): "Fehlende/unklare erforderliche
#     Angaben verhindern die Veroeffentlichung."
#   AC-034: immer erforderliche Pflichtfelder nach D-31; bei Bewegungs-/
#     Gesundheitsangeboten ist der Qualifikationsnachweis bedingt erforderlich.
#   EXC-013: unvollstaendiger Evententwurf -> keine Veroeffentlichung.
#
# Wichtig: Das Ergebnis ist eine HILFE fuer die menschliche Pruefung.
# Es ersetzt den manuellen Kurationsentscheid NICHT (D-33: keine automatisierte
# oder KI-basierte Freigabe).
class EventCompleteness
  Finding = Struct.new(:key, :label, :kind, :state, keyword_init: true) do
    def missing? = state == :missing
  end

  def initialize(event)
    @event = event
  end

  # Alle Befunde (vorhanden / fehlend / nicht einschlaegig / nicht anwendbar).
  def findings
    @findings ||= always_findings + conditional_findings + [ external_booking_finding ] + optional_findings
  end

  def missing
    findings.select(&:missing?)
  end

  # Erfuellt der Entwurf die Einreichungsvoraussetzung nach BR-005?
  def submittable?
    missing.empty?
  end

  def snapshot
    findings.map { |f| [ f.key, { "label" => f.label, "kind" => f.kind.to_s, "state" => f.state.to_s } ] }.to_h
  end

  # Ist der Qualifikationsnachweis fuer dieses Event zwingend (AC-034)?
  def qualification_forced?
    D31.qualification_forced?(@event.category)
  end

  private

  def present_value?(attribute)
    value = @event.public_send(attribute)
    case value
    when nil then false
    when String then value.strip.present?
    when TrueClass, FalseClass then true # eine gesetzte Kennzeichnung gilt als erfasst
    else true
    end
  end

  def always_findings
    D31::ALWAYS_REQUIRED.map do |field|
      Finding.new(key: field.key, label: field.label, kind: :always,
                  state: always_present?(field) ? :present : :missing)
    end
  end

  # D-31 Angabe 18 lautet "verantwortlicher GEPRUEFTER Anbieter". Erfuellt ist sie
  # nur, wenn ein Anbieter zugeordnet UND dieser verifiziert ist (ST-001,
  # verifiziert/aktiv). Die blosse Zuordnung genuegt nicht.
  def always_present?(field)
    return responsible_verified_provider? if field.attribute == :provider_id

    present_value?(field.attribute)
  end

  def responsible_verified_provider?
    @event.provider_id.present? && @event.provider&.verified? == true
  end

  def conditional_findings
    D31::CONDITIONAL.map do |field|
      relevant = relevant?(field)
      state =
        if !relevant
          :not_relevant
        elsif present_value?(field.attribute)
          :present
        else
          :missing
        end
      Finding.new(key: field.key, label: field.label, kind: :conditional, state: state)
    end
  end

  def relevant?(field)
    # AC-034: Bei Bewegungs-/Gesundheitsangeboten ist der Qualifikationsnachweis
    # unabhaengig von der Anbieterangabe bedingt erforderlich.
    return true if field.attribute == :qualification_evidence && qualification_forced?

    @event.public_send(field.relevance_attribute) == true
  end

  def external_booking_finding
    # D-31 i.V.m. D-39: im MVP NICHT ANWENDBAR / inaktiv.
    Finding.new(key: D31::EXTERNAL_BOOKING_MARKER.key,
                label: D31::EXTERNAL_BOOKING_MARKER.label,
                kind: :not_applicable_mvp, state: :not_applicable)
  end

  def optional_findings
    D31::OPTIONAL.map do |field|
      Finding.new(key: field.key, label: field.label, kind: :optional,
                  state: present_value?(field.attribute) ? :present : :not_provided)
    end
  end
end
