# frozen_string_literal: true

# Synthetische Testdaten fuer den internen Prototyp 01.
#
# Verhalten:
#   - leere Datenbank:            spielt die synthetischen Testdaten ein;
#   - nicht leere Datenbank:      bricht ohne jede Loeschung ab;
#   - FRELLO_SEED_RESET=1 gesetzt: loescht ALLE Prototypdaten der Zieldatenbank
#                                  und spielt die Testdaten neu ein.
#   Nur in development und test zulaessig.
#
# ALLE Datensaetze sind erfunden. Es gibt KEINE realen Schweizer Anbieter,
# KEINE realen Personen, KEINE realen Kontaktdaten. Jeder Datensatz traegt
# zusaetzlich das Kennzeichen `synthetic = true` (durch Check-Constraint erzwungen).
#
# Passwoerter der internen Testkonten werden NICHT in Quelldateien hinterlegt.
# Entweder aus ENV["FRELLO_PROTOTYPE_PASSWORD"] oder zufaellig erzeugt und
# einmalig auf der Konsole ausgegeben.

require "securerandom"

raise "Seeds nur in development/test" unless Rails.env.development? || Rails.env.test?

# Schutz vor stillem Datenverlust: Ist die Zieldatenbank nicht leer, bricht ein
# normaler Seed-Aufruf ab, BEVOR etwas geloescht wird. Ein bewusster Reset
# verlangt den ausdruecklich gesetzten Schalter FRELLO_SEED_RESET=1 und bleibt
# (siehe oben) auf development/test beschraenkt.
SEED_TABLES = [ AuditEntry, EventReview, ProviderReview, Event, InternalUser, Provider ].freeze
existing = SEED_TABLES.sum(&:count)
reset_requested = ENV["FRELLO_SEED_RESET"] == "1"

if existing.positive? && !reset_requested
  raise "Seeds abgebrochen: Die Datenbank #{ActiveRecord::Base.connection_db_config.database} " \
        "enthaelt bereits #{existing} Datensaetze. Es wurde nichts geloescht. " \
        "Fuer einen bewussten Reset FRELLO_SEED_RESET=1 setzen (nur development/test)."
end

password = ENV["FRELLO_PROTOTYPE_PASSWORD"].presence || SecureRandom.alphanumeric(16)

if existing.positive?
  ActiveRecord::Base.transaction do
    AuditEntry.delete_all
    EventReview.delete_all
    ProviderReview.delete_all
    Event.delete_all
    InternalUser.delete_all
    Provider.delete_all
  end
end

# --- Frello-Kuration ---------------------------------------------------------
curation = InternalUser.create!(
  email: "kuration@prototyp.invalid", password: password,
  role: "curation", display_name: "Testkonto Frello-Kuration"
)

# --- Synthetische Anbieter ---------------------------------------------------
def build_provider(attrs)
  Provider.create!({
    contact_person_name: "Testperson Muster",
    contact_email: "kontakt@prototyp.invalid",
    contact_phone: "+41 00 000 00 00",
    business_postal_code: "0000",
    synthetic: true
  }.merge(attrs))
end

p_verified = build_provider(
  organisation_name: "Testanbieter Quartiertreff (synthetisch)",
  provider_type: "nonprofit", business_address: "Teststrasse 1",
  business_postal_code: "8000", business_city: "Zürich", status: "verified_active"
)
p_verified2 = build_provider(
  organisation_name: "Testanbieter Kulturhaus (synthetisch)",
  provider_type: "institutional", business_address: "Probeweg 7",
  business_postal_code: "4000", business_city: "Basel", status: "verified_active"
)
p_registered = build_provider(
  organisation_name: "Testanbieter Wanderdienst (synthetisch)",
  provider_type: "commercial", business_address: "Musterallee 12",
  business_postal_code: "3000", business_city: "Bern", status: "registered"
)
p_rejected = build_provider(
  organisation_name: "Testanbieter Abgelehnt (synthetisch)",
  provider_type: "commercial", business_address: "Beispielgasse 3",
  business_postal_code: "6000", business_city: "Luzern", status: "rejected"
)

[ p_verified, p_verified2, p_registered, p_rejected ].each_with_index do |provider, index|
  InternalUser.create!(
    email: "anbieter#{index + 1}@prototyp.invalid", password: password,
    role: "provider", display_name: "Testkonto #{provider.organisation_name}",
    provider: provider
  )
end

# Pruefnachweise fuer die bereits entschiedenen Anbieter (DO-006).
[ [ p_verified, "verified" ], [ p_verified2, "verified" ], [ p_rejected, "rejected" ] ].each do |provider, outcome|
  ProviderReview.create!(
    provider: provider, decided_by: curation, outcome: outcome,
    register_check: true, identity_check: true, bank_account_check: true,
    qualification_check: outcome == "verified",
    note: "Synthetischer Prüfvermerk für Testdaten. Keine reale Prüfung durchgeführt.",
    decided_at: 3.days.ago
  )
  AuditTrail.record!(actor: curation, subject: provider, action: "provider.review_decided",
                     from_state: "in_review",
                     to_state: outcome == "verified" ? "verified_active" : "rejected",
                     note: "Testdaten", details: { "seed" => true })
end

# --- Synthetische Events -----------------------------------------------------
BASE = {
  language: "de", synthetic: true,
  contact_option: "Telefonische Rückfragen über den Testanbieter.",
  accessibility_info: "Stufenloser Zugang, Lift vorhanden, Sitzgelegenheiten.",
  alone_welcome: true, min_participants: 4, max_participants: 16,
  cancellation_model: "standard", payment_method: "online"
}.freeze

def build_event(provider, attrs)
  date = attrs.delete(:date) || 30.days.from_now.to_date
  Event.create!(BASE.merge(
    provider: provider,
    event_date: date,
    start_time: "14:00", end_time: "16:30",
    booking_deadline_at: (date - 3).to_time.change(hour: 18),
    decision_point_at: (date - 2).to_time.change(hour: 12)
  ).merge(attrs))
end

released = []

released << build_event(p_verified,
  title: "Gemeinsamer Mittagstisch im Quartier", category: "Essen & Genuss",
  short_description: "Ein warmes Mittagessen in kleiner Runde. Sie kommen einfach vorbei und essen gemeinsam.",
  venue_name: "Quartiertreff Testhaus", full_address: "Teststrasse 1, 8000", city_region: "Zürich",
  price_chf: 18.00, status: "released", released_at: 2.days.ago,
  catering_relevant: true, catering_info: "Suppe, Hauptgang und Dessert sind im Preis enthalten.",
  public_transport_info: "Haltestelle Testplatz, 3 Minuten zu Fuss.", synthetic_booked_count: 11, date: 20.days.from_now.to_date)

released << build_event(p_verified,
  title: "Jassnachmittag für alle", category: "Spiel & Geselligkeit",
  short_description: "Wir jassen in kleinen Gruppen. Anfängerinnen und Anfänger sind willkommen.",
  venue_name: "Quartiertreff Testhaus", full_address: "Teststrasse 1, 8000", city_region: "Zürich",
  price_chf: 0.00, status: "released", released_at: 2.days.ago,
  synthetic_booked_count: 16, date: 14.days.from_now.to_date)

released << build_event(p_verified2,
  title: "Führung durch die Testausstellung", category: "Kultur & Unterhaltung",
  short_description: "Eine ruhige Führung mit genügend Zeit und Sitzgelegenheiten unterwegs.",
  venue_name: "Kulturhaus Testbau", full_address: "Probeweg 7, 4000", city_region: "Basel",
  price_chf: 24.50, status: "released", released_at: 1.day.ago,
  payment_method: "on_site", cancellation_model: "flexible",
  synthetic_booked_count: 4, date: 25.days.from_now.to_date)

released << build_event(p_verified2,
  title: "Leichte Wanderung am Testweg", category: "Bewegung & Natur",
  short_description: "Eine gemütliche Wanderung von rund zwei Stunden mit mehreren Pausen.",
  venue_name: "Treffpunkt Testbahnhof", full_address: "Bahnhofplatz 1, 4000", city_region: "Basel",
  price_chf: 12.00, status: "released", released_at: 1.day.ago,
  activity_level_relevant: true, activity_level: "moderate",
  required_equipment_relevant: true, required_equipment: "Feste Schuhe und Regenschutz.",
  # Kategorie "Bewegung & Natur": Qualifikationsnachweis nach AC-034 erforderlich.
  qualification_evidence: "Synthetischer Nachweis: Wanderleiterausbildung (Testdatum).",
  accessibility_info: "Naturweg, teilweise uneben. Keine Rollstuhleignung.",
  alone_welcome: false, synthetic_booked_count: 2, date: 40.days.from_now.to_date)

released.each do |event|
  EventReview.create!(event: event, decided_by: curation, outcome: "released",
                      note: "Synthetischer Prüfvermerk: Pflichtangaben vollständig.",
                      completeness_snapshot: event.completeness.snapshot, decided_at: event.released_at)
  AuditTrail.record!(actor: curation, subject: event, action: "event.review_decided",
                     from_state: "in_review", to_state: "released",
                     note: "Testdaten", details: { "seed" => true, "outcome" => "released" })
end

# Entwurf, bewusst unvollstaendig (BR-005 / EXC-013 pruefbar machen).
build_event(p_verified, title: "Unvollständiger Testentwurf", category: nil,
  short_description: nil, venue_name: "Quartiertreff Testhaus",
  full_address: nil, city_region: "Zürich", price_chf: nil, status: "draft",
  contact_option: nil, accessibility_info: nil, alone_welcome: nil)

# Entwurf, vollstaendig und bereit zur Einreichung.
build_event(p_verified, title: "Vollständiger Testentwurf (bereit)", category: "Lernen & Kreativität",
  short_description: "Ein Nachmittag zum Ausprobieren. Alles Material ist vorhanden.",
  venue_name: "Quartiertreff Testhaus", full_address: "Teststrasse 1, 8000", city_region: "Zürich",
  price_chf: 15.00, status: "draft", date: 50.days.from_now.to_date)

# Eingereichter Entwurf, wartet auf Kurationsentscheid.
pending = build_event(p_verified2, title: "Eingereichter Testentwurf", category: "Engagement & Generationen",
  short_description: "Ein Austausch zwischen Generationen bei Kaffee und Kuchen.",
  venue_name: "Kulturhaus Testbau", full_address: "Probeweg 7, 4000", city_region: "Basel",
  price_chf: 0.00, status: "in_review", date: 35.days.from_now.to_date)
AuditTrail.record!(actor: InternalUser.find_by(provider: p_verified2), subject: pending,
                   action: "event.submitted_for_review", from_state: "draft", to_state: "in_review",
                   details: { "seed" => true })

# Zur Ueberarbeitung zurueckgegebener Entwurf (im Prototyp Endzustand, siehe
# app/domain/event_lifecycle.rb).
returned = build_event(p_verified, title: "Zurückgegebener Testentwurf", category: "Kultur & Unterhaltung",
  short_description: "Synthetischer Entwurf, der zur Überarbeitung zurückgegeben wurde.",
  venue_name: "Quartiertreff Testhaus", full_address: "Teststrasse 1, 8000", city_region: "Zürich",
  price_chf: 9.00, status: "returned_for_revision", date: 45.days.from_now.to_date)
EventReview.create!(event: returned, decided_by: curation, outcome: "returned",
                    note: "Synthetischer Prüfvermerk: Beschreibung bitte verständlicher fassen.",
                    completeness_snapshot: returned.completeness.snapshot, decided_at: 1.day.ago)

puts ""
puts "=" * 72
puts "Synthetische Testdaten eingespielt."
puts "  Anbieter: #{Provider.count} · Events: #{Event.count} " \
     "(#{Event.in_catalog.count} im Katalog) · Auditeintraege: #{AuditEntry.count}"
puts ""
puts "Interne Testkonten (synthetisch, nur lokal):"
InternalUser.order(:role, :email).each { |u| puts "  #{u.email.ljust(32)} #{u.role}" }
puts ""
puts "Passwort fuer alle Testkonten: #{password}"
puts "  (zufaellig erzeugt, falls FRELLO_PROTOTYPE_PASSWORD nicht gesetzt war;"
puts "   steht in keiner Quelldatei und ist kein echtes Zugangsdatum)"
puts "=" * 72
