# frozen_string_literal: true

# D31 – maschinenlesbare Fassung des verbindlichen Event-Pflichtfeldsatzes.
#
# Quelle (woertlich geprueft, 05.11.2026):
#   docs/business/02_OPEN_FOUNDER_DECISIONS.md, Abschnitt "D-31 Pflichtfelder fuer Veranstaltungen"
#   docs/product/07_DATA_OBJECTS.md, Abschnitt "Event-Pflichtfelder (D-31, exakt fachlich uebernommen)"
#
# Beide Quellen stimmen woertlich ueberein:
#   21 immer erforderliche Angaben
#    6 bedingt erforderliche Angaben (davon 1 im MVP inaktiv: externe Buchungskennzeichnung, D-39)
#    3 freiwillige Angaben
#
# Diese Datei legt KEINE neue Fachentscheidung fest. Sie uebersetzt den bestehenden
# Entscheid in pruefbare Form (BR-005, AC-034, AC-004, AC-044).
module D31
  Field = Struct.new(:key, :attribute, :label, :kind, :relevance_attribute, keyword_init: true)

  # --- Immer erforderlich (21) ------------------------------------------------
  ALWAYS_REQUIRED = [
    Field.new(key: "d31.01", attribute: :title,              label: "Titel",                                  kind: :always),
    Field.new(key: "d31.02", attribute: :short_description,  label: "Verständliche Kurzbeschreibung",         kind: :always),
    Field.new(key: "d31.03", attribute: :category,           label: "Kategorie",                              kind: :always),
    Field.new(key: "d31.04", attribute: :event_date,         label: "Datum",                                  kind: :always),
    Field.new(key: "d31.05", attribute: :start_time,         label: "Beginn",                                 kind: :always),
    Field.new(key: "d31.06", attribute: :end_time,           label: "Ende",                                   kind: :always),
    Field.new(key: "d31.07", attribute: :venue_name,         label: "Veranstaltungsort",                      kind: :always),
    Field.new(key: "d31.08", attribute: :full_address,       label: "Vollständige Adresse",                   kind: :always),
    Field.new(key: "d31.09", attribute: :city_region,        label: "Stadt bzw. Region",                      kind: :always),
    Field.new(key: "d31.10", attribute: :price_chf,          label: "Preis",                                  kind: :always),
    Field.new(key: "d31.11", attribute: :payment_method,     label: "Zahlungsart",                            kind: :always),
    Field.new(key: "d31.12", attribute: :min_participants,   label: "Mindestteilnehmerzahl",                  kind: :always),
    Field.new(key: "d31.13", attribute: :max_participants,   label: "Höchstteilnehmerzahl",                   kind: :always),
    Field.new(key: "d31.14", attribute: :booking_deadline_at, label: "Buchungsschluss",                       kind: :always),
    Field.new(key: "d31.15", attribute: :cancellation_model, label: "Gewähltes Stornomodell",                 kind: :always),
    Field.new(key: "d31.16", attribute: :decision_point_at,  label: "Zeitpunkt des Durchführungsentscheids",  kind: :always),
    Field.new(key: "d31.17", attribute: :language,           label: "Sprache",                                kind: :always),
    Field.new(key: "d31.18", attribute: :provider_id,        label: "Verantwortlicher geprüfter Anbieter",    kind: :always),
    Field.new(key: "d31.19", attribute: :contact_option,     label: "Kontaktmöglichkeit",                     kind: :always),
    Field.new(key: "d31.20", attribute: :accessibility_info, label: "Zugänglichkeitsangaben",                 kind: :always),
    Field.new(key: "d31.21", attribute: :alone_welcome,      label: "Kennzeichnung «Alleine willkommen»",     kind: :always)
  ].freeze

  # --- Bedingt erforderlich (6) -----------------------------------------------
  # "wenn fuer das Angebot relevant" (D-31). Die Relevanz wird je Angabe
  # ausdruecklich erfasst; sie wird NICHT stillschweigend angenommen.
  CONDITIONAL = [
    Field.new(key: "d31.22", attribute: :required_equipment,     label: "Erforderliche Ausrüstung",
              kind: :conditional, relevance_attribute: :required_equipment_relevant),
    Field.new(key: "d31.23", attribute: :catering_info,          label: "Verpflegung",
              kind: :conditional, relevance_attribute: :catering_relevant),
    Field.new(key: "d31.24", attribute: :age_focus,              label: "Transparenter Altersfokus",
              kind: :conditional, relevance_attribute: :age_focus_relevant),
    Field.new(key: "d31.25", attribute: :activity_level,         label: "Körperliches Aktivitätsniveau",
              kind: :conditional, relevance_attribute: :activity_level_relevant),
    Field.new(key: "d31.26", attribute: :qualification_evidence, label: "Qualifikationsnachweis",
              kind: :conditional, relevance_attribute: :qualification_evidence_relevant)
  ].freeze

  # Sechste bedingte Angabe: "Kennzeichnung externer Buchung".
  # Im MVP NICHT ANWENDBAR / inaktiv (D-31 i.V.m. D-39, 07_DATA_OBJECTS.md).
  # Bewusst als eigener, sichtbarer Eintrag gefuehrt und NICHT entfernt.
  EXTERNAL_BOOKING_MARKER = Field.new(
    key: "d31.27", attribute: :external_booking_marker,
    label: "Kennzeichnung externer Buchung", kind: :not_applicable_mvp
  ).freeze

  # --- Freiwillig im MVP (3) ---------------------------------------------------
  OPTIONAL = [
    Field.new(key: "d31.28", attribute: :public_transport_info, label: "ÖV-Informationen",     kind: :optional),
    Field.new(key: "d31.29", attribute: :parking_info,          label: "Parkmöglichkeiten",     kind: :optional),
    Field.new(key: "d31.30", attribute: :event_image_note,      label: "Veranstaltungsbild",    kind: :optional)
  ].freeze

  # --- Wertelisten --------------------------------------------------------------
  # Kategorien: Businessplan Paragraf 14 "Veranstaltungskategorien".
  CATEGORIES = [
    "Essen & Genuss",
    "Spiel & Geselligkeit",
    "Kultur & Unterhaltung",
    "Ausflüge & Reisen",
    "Bewegung & Natur",
    "Lernen & Kreativität",
    "Engagement & Generationen",
    "Online & von zuhause"
  ].freeze

  # AC-034: "bei Bewegungs-/Gesundheitsangeboten ist der Qualifikationsnachweis
  # bedingt erforderlich". D-31 nennt zusaetzlich "vergleichbar sensible Angebote";
  # dafuer bleibt die manuelle Relevanzmarkierung erhalten.
  QUALIFICATION_FORCING_CATEGORIES = [ "Bewegung & Natur" ].freeze

  # OP-033 (EXTERN ZU PRUEFEN): Reiseveranstalter-/Pauschalreiserecht.
  # Im Prototyp nur als sichtbarer Hinweis, NICHT als Sperre.
  TRAVEL_NOTICE_CATEGORIES = [ "Ausflüge & Reisen" ].freeze

  # D-17: Online-Zahlung und Zahlung vor Ort. OP-008 bleibt offen.
  PAYMENT_METHODS = { "online" => "Online-Zahlung", "on_site" => "Zahlung vor Ort" }.freeze

  # BR-010 / D-18: drei Frello-Stornomodelle, keine freien Klauseln.
  CANCELLATION_MODELS = {
    "flexible" => "Flexibel – kostenlos bis 24 Stunden vor Beginn",
    "standard" => "Standard – kostenlos bis 7 Tage, 50 Prozent bis 48 Stunden vor Beginn",
    "fixed"    => "Fix – grundsätzlich keine reguläre Rückerstattung"
  }.freeze

  ACTIVITY_LEVELS = { "low" => "Niedrig", "moderate" => "Mittel", "high" => "Hoch" }.freeze

  # NFR-005: Produktsprache im Pilot ist Deutsch.
  LANGUAGES = { "de" => "Deutsch" }.freeze

  def self.all_fields
    ALWAYS_REQUIRED + CONDITIONAL + [ EXTERNAL_BOOKING_MARKER ] + OPTIONAL
  end

  def self.qualification_forced?(category)
    QUALIFICATION_FORCING_CATEGORIES.include?(category.to_s)
  end

  def self.travel_notice?(category)
    TRAVEL_NOTICE_CATEGORIES.include?(category.to_s)
  end
end
