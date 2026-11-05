# frozen_string_literal: true

# Frello – Interner Prototyp 01
# Fachliche Grundlage: DO-005, DO-006, DO-007, DO-008, DO-024 (docs/product/07_DATA_OBJECTS.md)
# Zustandsmodelle: ST-001, ST-002 (docs/product/06_STATE_MODELS.md, Teilmenge)
# Pflichtfeldsatz: D-31 (docs/business/02_OPEN_FOUNDER_DECISIONS.md)
#
# Diese Migration bildet ausschliesslich den freigegebenen Prototypumfang ab.
# Buchungen, Zahlungen, Teilnehmende, Warteliste, Chat und Bewertungen sind
# ausdruecklich NICHT Bestandteil (DO-001..DO-004, DO-009..DO-023 fehlen bewusst).
class CreatePrototypeSchema < ActiveRecord::Migration[8.1]
  def change
    # --- DO-005 Anbieter ---------------------------------------------------------
    create_table :providers do |t|
      t.string :organisation_name,   null: false
      # BR-001 / D-08: nur gewerblich, institutionell, gemeinnuetzig. Keine Privaten.
      t.string :provider_type,       null: false
      t.string :contact_person_name, null: false
      t.string :contact_email,       null: false
      t.string :contact_phone,       null: false
      t.string :business_address,    null: false
      t.string :business_postal_code, null: false
      t.string :business_city,       null: false
      # ST-001
      t.string :status, null: false, default: "registered"
      # Testdatenmarkierung: jeder Datensatz dieses Prototyps ist synthetisch.
      t.boolean :synthetic, null: false, default: true
      t.timestamps
    end
    add_check_constraint :providers,
      "provider_type IN ('commercial','institutional','nonprofit')",
      name: "providers_type_valid"
    add_check_constraint :providers,
      "status IN ('registered','in_review','verified_active','rejected','suspended')",
      name: "providers_status_valid"
    add_check_constraint :providers, "synthetic = true", name: "providers_synthetic_only"

    # --- Interne Testkonten (nur Prototyp-Hilfsmittel, keine Fachanforderung) -----
    create_table :internal_users do |t|
      t.string  :email,           null: false
      t.string  :password_digest, null: false
      t.string  :role,            null: false # provider | curation
      t.string  :display_name,    null: false
      t.references :provider, foreign_key: true, null: true
      t.timestamps
    end
    add_index :internal_users, :email, unique: true
    add_check_constraint :internal_users,
      "role IN ('provider','curation')", name: "internal_users_role_valid"
    # Ein Kurationskonto darf keinem Anbieter zugeordnet sein; ein Anbieterkonto muss es.
    add_check_constraint :internal_users,
      "(role = 'curation' AND provider_id IS NULL) OR (role = 'provider' AND provider_id IS NOT NULL)",
      name: "internal_users_role_provider_consistent"

    # --- DO-006 Anbieterpruefung -------------------------------------------------
    create_table :provider_reviews do |t|
      t.references :provider, null: false, foreign_key: true
      t.references :decided_by, null: false, foreign_key: { to_table: :internal_users }
      t.string  :outcome, null: false # verified | rejected
      # Manuell erfasste Pruefmassnahmen nach Businessplan Paragraf 29 / DO-006.
      # KEINE Schnittstelle zu Registern, Identitaets- oder Bankpruefdiensten.
      t.boolean :register_check,      null: false, default: false
      t.boolean :identity_check,      null: false, default: false
      t.boolean :bank_account_check,  null: false, default: false
      t.boolean :qualification_check, null: false, default: false
      t.text    :note, null: false
      t.datetime :decided_at, null: false
      t.timestamps
    end
    add_check_constraint :provider_reviews,
      "outcome IN ('verified','rejected')", name: "provider_reviews_outcome_valid"

    # --- DO-007 Event, Pflichtfeldsatz D-31 --------------------------------------
    create_table :events do |t|
      t.references :provider, null: false, foreign_key: true # D-31/18 verantwortlicher Anbieter

      # D-31 immer erforderlich (21 Angaben)
      t.string   :title                        # 01 Titel
      t.text     :short_description            # 02 verstaendliche Kurzbeschreibung
      t.string   :category                     # 03 Kategorie
      t.date     :event_date                   # 04 Datum
      t.time     :start_time                   # 05 Beginn
      t.time     :end_time                     # 06 Ende
      t.string   :venue_name                   # 07 Veranstaltungsort
      t.string   :full_address                 # 08 vollstaendige Adresse
      t.string   :city_region                  # 09 Stadt bzw. Region
      t.decimal  :price_chf, precision: 8, scale: 2 # 10 Preis (0.00 = kostenlos)
      t.string   :payment_method               # 11 Zahlungsart (online | on_site)
      t.integer  :min_participants             # 12 Mindestteilnehmerzahl
      t.integer  :max_participants             # 13 Hoechstteilnehmerzahl
      t.datetime :booking_deadline_at          # 14 Buchungsschluss
      t.string   :cancellation_model           # 15 Stornomodell (BR-010)
      t.datetime :decision_point_at            # 16 Zeitpunkt des Durchfuehrungsentscheids
      t.string   :language                     # 17 Sprache
      t.text     :contact_option               # 19 Kontaktmoeglichkeit
      t.text     :accessibility_info           # 20 Zugaenglichkeitsangaben
      t.boolean  :alone_welcome                # 21 Kennzeichnung "Alleine willkommen"

      # D-31 bedingt erforderlich (6 Angaben, je mit ausdruecklicher Relevanzangabe)
      t.string  :activity_level                       # 22 koerperliches Aktivitaetsniveau
      t.boolean :activity_level_relevant,      null: false, default: false
      t.text    :required_equipment                   # 23 erforderliche Ausruestung
      t.boolean :required_equipment_relevant,  null: false, default: false
      t.text    :catering_info                        # 24 Verpflegung
      t.boolean :catering_relevant,            null: false, default: false
      t.string  :age_focus                            # 25 transparenter Altersfokus
      t.boolean :age_focus_relevant,           null: false, default: false
      # 26 Kennzeichnung externer Buchung:
      #    Im MVP NICHT ANWENDBAR / inaktiv (D-31 i.V.m. D-39).
      #    Spalte bewusst angelegt und dauerhaft gesperrt, NICHT stillschweigend entfernt.
      t.boolean :external_booking_marker, null: false, default: false
      t.text    :qualification_evidence               # 27 Qualifikationsnachweis
      t.boolean :qualification_evidence_relevant, null: false, default: false

      # D-31 freiwillig im MVP (3 Angaben)
      t.text :public_transport_info            # 28 OeV-Informationen
      t.text :parking_info                     # 29 Parkmoeglichkeiten
      t.text :event_image_note                 # 30 Veranstaltungsbild (im Prototyp Textverweis)

      # ST-002 (Teilmenge): draft | in_review | returned_for_revision | rejected | released
      # "released" bedeutet in diesem Prototyp ausschliesslich INTERNE Kataloganzeige.
      t.string :status, null: false, default: "draft"

      # BR-007 nur Erfassung und Anzeige: ausdruecklich synthetischer Testwert,
      # es gibt KEINE Buchungslogik und KEINE echten Teilnehmenden.
      t.integer :synthetic_booked_count, null: false, default: 0

      t.boolean :synthetic, null: false, default: true
      t.datetime :released_at
      t.timestamps
    end
    add_check_constraint :events,
      "status IN ('draft','in_review','returned_for_revision','rejected','released')",
      name: "events_status_valid"
    add_check_constraint :events,
      "payment_method IS NULL OR payment_method IN ('online','on_site')",
      name: "events_payment_method_valid"
    add_check_constraint :events,
      "cancellation_model IS NULL OR cancellation_model IN ('flexible','standard','fixed')",
      name: "events_cancellation_model_valid"
    add_check_constraint :events,
      "activity_level IS NULL OR activity_level IN ('low','moderate','high')",
      name: "events_activity_level_valid"
    # D-39: externe Buchungen sind im MVP ausgeschlossen -> Kennzeichnung bleibt false.
    add_check_constraint :events,
      "external_booking_marker = false", name: "events_external_booking_inactive"
    add_check_constraint :events, "synthetic = true", name: "events_synthetic_only"
    add_check_constraint :events,
      "synthetic_booked_count >= 0", name: "events_synthetic_booked_count_non_negative"
    add_index :events, :status
    add_index :events, :city_region
    add_index :events, :event_date

    # --- DO-008 Eventfreigabe ----------------------------------------------------
    create_table :event_reviews do |t|
      t.references :event, null: false, foreign_key: true
      t.references :decided_by, null: false, foreign_key: { to_table: :internal_users }
      t.string   :outcome, null: false # released | rejected | returned
      t.text     :note, null: false
      t.jsonb    :completeness_snapshot, null: false, default: {}
      t.datetime :decided_at, null: false
      t.timestamps
    end
    add_check_constraint :event_reviews,
      "outcome IN ('released','rejected','returned')", name: "event_reviews_outcome_valid"

    # --- DO-024 Auditprotokoll ---------------------------------------------------
    create_table :audit_entries do |t|
      t.datetime :occurred_at, null: false
      t.references :actor, foreign_key: { to_table: :internal_users }, null: true
      t.string :actor_role,   null: false
      t.string :actor_label,  null: false
      t.string :subject_type, null: false
      t.bigint :subject_id,   null: false
      t.string :subject_label, null: false
      t.string :action,       null: false
      t.string :from_state
      t.string :to_state
      t.text   :note
      t.jsonb  :details, null: false, default: {}
      t.timestamps
    end
    add_index :audit_entries, [ :subject_type, :subject_id ]
    add_index :audit_entries, :occurred_at
  end
end
