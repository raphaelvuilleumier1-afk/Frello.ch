require "test_helper"

# BR-006 / D-32 / AC-002 ("filtern korrekt"): funktionale Pruefung der bisher
# ungeprueften Filter Datum/Zeitraum, Kategorie, Preis, Zugaenglichkeit und
# Aktivitaetsniveau – Treffer, Nichttreffer und Grenzen. Nur freigegebene Events.
class CatalogFiltersTest < ActionDispatch::IntegrationTest
  setup do
    @provider = create_provider
    @day = 40.days.from_now.to_date
  end

  def released(title, **attrs)
    create_event(@provider, status: "released", title: title, **attrs)
  end

  def search(params)
    get catalog_path, params: params
    assert_response :success
    response.body
  end

  # --- Datum / Zeitraum -------------------------------------------------------

  test "Datum von und bis schliessen die Grenztage ein" do
    released("Am Vortag", event_date: @day - 1)
    released("Am Starttag", event_date: @day)
    released("Am Endtag", event_date: @day + 2)
    released("Nach dem Endtag", event_date: @day + 3)

    body = search(date_from: @day.iso8601, date_to: (@day + 2).iso8601)
    assert_includes body, "Am Starttag"
    assert_includes body, "Am Endtag"
    refute_includes body, "Am Vortag"
    refute_includes body, "Nach dem Endtag"
  end

  test "nur Datum von oder nur Datum bis" do
    released("Frueh", event_date: @day - 5)
    released("Spaet", event_date: @day + 5)
    body = search(date_from: @day.iso8601)
    assert_includes body, "Spaet"
    refute_includes body, "Frueh"
    body = search(date_to: @day.iso8601)
    assert_includes body, "Frueh"
    refute_includes body, "Spaet"
  end

  test "ungueltiges Datum wird ignoriert statt Fehler" do
    released("Bleibt sichtbar")
    body = search(date_from: "2026-02-30", date_to: "kein-datum")
    assert_includes body, "Bleibt sichtbar"
  end

  # --- Kategorie --------------------------------------------------------------

  test "Kategorie trifft genau die gewaehlte Kategorie" do
    released("Kulturangebot", category: "Kultur & Unterhaltung")
    released("Essensangebot", category: "Essen & Genuss")
    body = search(category: "Kultur & Unterhaltung")
    assert_includes body, "Kulturangebot"
    refute_includes body, "Essensangebot"
  end

  test "unbekannte Kategorie liefert keinen Treffer" do
    released("Irgendein Angebot", category: "Essen & Genuss")
    body = search(category: "Gibt es nicht")
    refute_includes body, "Irgendein Angebot"
  end

  # --- Preis ------------------------------------------------------------------

  test "Preis hoechstens schliesst die Grenze ein" do
    released("Genau zwanzig", price_chf: 20)
    released("Darunter", price_chf: 19.95)
    released("Darueber", price_chf: 20.05)
    body = search(price_max: "20")
    assert_includes body, "Genau zwanzig"
    assert_includes body, "Darunter"
    refute_includes body, "Darueber"
  end

  test "ungueltiger Preis wird ignoriert" do
    released("Teuer", price_chf: 999)
    body = search(price_max: "-5")
    assert_includes body, "Teuer"
    body = search(price_max: "abc")
    assert_includes body, "Teuer"
  end

  test "kostenlos und Preis kombiniert" do
    released("Gratis", price_chf: 0)
    released("Guenstig", price_chf: 5)
    body = search(free_only: "1", price_max: "10")
    assert_includes body, "Gratis"
    refute_includes body, "Guenstig"
  end

  # --- Zugaenglichkeit --------------------------------------------------------

  test "Zugaenglichkeit sucht ohne Beachtung der Gross-/Kleinschreibung" do
    released("Mit Lift", accessibility_info: "Stufenloser Zugang, Lift vorhanden")
    released("Ohne Lift", accessibility_info: "Treppe, kein Lift-Zugang moeglich")
    released("Naturweg", accessibility_info: "Unebener Naturweg")
    body = search(accessibility: "LIFT")
    assert_includes body, "Mit Lift"
    assert_includes body, "Ohne Lift"
    refute_includes body, "Naturweg"
  end

  test "Zugaenglichkeit: Platzhalterzeichen werden wortwoertlich gesucht" do
    released("Normal", accessibility_info: "Stufenlos")
    body = search(accessibility: "%")
    refute_includes body, "Normal", "% darf nicht als Platzhalter alles treffen"
  end

  # --- Aktivitaetsniveau (inkl. Befund 3) --------------------------------------

  test "Aktivitaetsniveau trifft nur bei als einschlaegig gekennzeichnetem Wert" do
    released("Hoch einschlaegig", activity_level: "high", activity_level_relevant: true)
    released("Hoch nicht einschlaegig", activity_level: "high", activity_level_relevant: false)
    released("Niedrig einschlaegig", activity_level: "low", activity_level_relevant: true)

    body = search(activity_level: "high")
    assert_includes body, "Hoch einschlaegig"
    refute_includes body, "Hoch nicht einschlaegig",
      "gespeicherter Wert ohne Relevanzkennzeichnung darf keinen Treffer erzeugen"
    refute_includes body, "Niedrig einschlaegig"
  end

  test "nicht einschlaegiger Wert bleibt gespeichert und wird nicht geloescht" do
    event = released("Wert bleibt", activity_level: "moderate", activity_level_relevant: false)
    search(activity_level: "moderate")
    assert_equal "moderate", event.reload.activity_level
  end
end
