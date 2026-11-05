require "test_helper"

# FR-001..FR-004, BR-006, AC-001..AC-004, AC-044.
class CatalogVisibilityTest < ActionDispatch::IntegrationTest
  setup do
    @provider = create_provider
    @released = create_event(@provider, status: "released", title: "Freigegebenes Testangebot",
                             city_region: "Zürich", category: "Essen & Genuss", price_chf: 20.0)
    @draft     = create_event(@provider, status: "draft", title: "Entwurf geheim")
    @in_review = create_event(@provider, status: "in_review", title: "In Prüfung geheim")
    @returned  = create_event(@provider, status: "returned_for_revision", title: "Zurückgegeben geheim")
    @rejected  = create_event(@provider, status: "rejected", title: "Abgelehnt geheim")
  end

  test "AC-001 Suche zeigt ausschliesslich freigegebene Events" do
    get catalog_path
    assert_response :success
    assert_match "Freigegebenes Testangebot", response.body
    [ @draft, @in_review, @returned, @rejected ].each do |event|
      refute_match event.title, response.body, "#{event.status} darf nicht sichtbar sein"
    end
  end

  test "AC-001 direkte Adresse eines nicht freigegebenen Events ergibt 404" do
    [ @draft, @in_review, @returned, @rejected ].each do |event|
      get catalog_event_path(event)
      assert_response :not_found, "#{event.status} darf nicht ueber direkte URL erreichbar sein"
      refute_match event.title, response.body
    end
  end

  test "freigegebenes Event ist ueber direkte Adresse erreichbar" do
    get catalog_event_path(@released)
    assert_response :success
    assert_match "Freigegebenes Testangebot", response.body
  end

  test "AC-004 Detailseite zeigt alle immer erforderlichen D-31-Angaben" do
    get catalog_event_path(@released)
    e = @released
    # AC-004 verlangt sichtbare ANGABEN. Titel und Kurzbeschreibung erscheinen als
    # Ueberschrift bzw. Fliesstext, die uebrigen als beschriftete Liste.
    expected = {
      "d31.01" => e.title,
      "d31.02" => e.short_description,
      "d31.03" => "Essen &amp; Genuss",
      "d31.04" => I18n.l(e.event_date, format: :long),
      "d31.05" => e.start_time.strftime("%H:%M"),
      "d31.06" => e.end_time.strftime("%H:%M"),
      "d31.07" => e.venue_name,
      "d31.08" => e.full_address,
      "d31.09" => e.city_region,
      "d31.10" => "CHF 20.00",
      "d31.11" => e.payment_method_label,
      "d31.12" => "Mindestteilnehmerzahl",
      "d31.13" => "Höchstteilnehmerzahl",
      "d31.14" => I18n.l(e.booking_deadline_at, format: :long),
      "d31.15" => e.cancellation_model_label,
      "d31.16" => I18n.l(e.decision_point_at, format: :long),
      "d31.17" => e.language_label,
      "d31.18" => e.provider.organisation_name,
      "d31.19" => e.contact_option,
      "d31.20" => e.accessibility_info,
      "d31.21" => "Alleine willkommen"
    }
    assert_equal D31::ALWAYS_REQUIRED.map(&:key).sort, expected.keys.sort,
      "Die Pruefung muss alle 21 immer erforderlichen Angaben abdecken"
    expected.each do |key, value|
      assert_includes response.body, value.to_s,
        "D-31-Angabe #{key} ist auf der Detailseite nicht sichtbar"
    end
  end

  test "AC-004 beschriftete Angaben tragen ihre D-31-Bezeichnung" do
    get catalog_event_path(@released)
    # Alles ausser Titel (Ueberschrift) und Kurzbeschreibung (Fliesstext)
    # erscheint in der Definitionsliste mit seiner Bezeichnung.
    labelled = D31::ALWAYS_REQUIRED.reject { |f| %i[title short_description].include?(f.attribute) }
    labelled.each do |field|
      assert_includes response.body, field.label,
        "Bezeichnung fehlt in der Definitionsliste: #{field.label}"
    end
  end

  test "AC-044 Zugaenglichkeitsangaben sind auf der Detailseite vorhanden" do
    get catalog_event_path(@released)
    assert_match "Zugänglichkeitsangaben", response.body
    assert_match @released.accessibility_info, response.body
  end

  test "AC-002 genau die neun MVP-Pflichtfilter stehen bereit" do
    get catalog_path
    %w[city_region date_from date_to category price_max free_only
       accessibility activity_level alone_welcome available_places_only].each do |name|
      assert_match(/name="#{name}"/, response.body, "Filter fehlt: #{name}")
    end
    assert_equal 10, CatalogQuery::FILTER_KEYS.size,
      "neun Pflichtfilter, davon Datum als Von/Bis-Paar"
  end

  test "AC-002 zurueckgestellte Filter sind nicht vorhanden" do
    get catalog_path
    %w[language public_transport catering age_focus].each do |name|
      refute_match(/name="#{name}"/, response.body, "zurueckgestellter Filter darf fehlen: #{name}")
    end
  end

  test "zurueckgestellte Filterparameter bleiben wirkungslos" do
    get catalog_path, params: { language: "fr", age_focus: "80+", catering: "nein" }
    assert_response :success
    assert_match "Freigegebenes Testangebot", response.body
  end

  test "Filter Stadt und Region wirkt" do
    create_event(@provider, status: "released", title: "Basler Testangebot", city_region: "Basel")
    get catalog_path, params: { city_region: "Basel" }
    assert_match "Basler Testangebot", response.body
    refute_match "Freigegebenes Testangebot", response.body
  end

  test "Filter kostenlos wirkt" do
    create_event(@provider, status: "released", title: "Kostenloses Testangebot", price_chf: 0)
    get catalog_path, params: { free_only: "1" }
    assert_match "Kostenloses Testangebot", response.body
    refute_match "Freigegebenes Testangebot", response.body
  end

  test "Filter verfuegbare Plaetze nutzt den synthetischen Testwert" do
    create_event(@provider, status: "released", title: "Ausgebuchtes Testangebot",
                 max_participants: 10, synthetic_booked_count: 10)
    get catalog_path, params: { available_places_only: "1" }
    assert_match "Freigegebenes Testangebot", response.body
    refute_match "Ausgebuchtes Testangebot", response.body
  end

  test "Filter alleine willkommen wirkt" do
    create_event(@provider, status: "released", title: "Nicht alleine Testangebot", alone_welcome: false)
    get catalog_path, params: { alone_welcome: "1" }
    assert_match "Freigegebenes Testangebot", response.body
    refute_match "Nicht alleine Testangebot", response.body
  end

  test "Besuchersicht nennt sich ausdruecklich interne Vorschau ohne Buchung" do
    get catalog_path
    assert_match "Interne Vorschau ohne Buchungsfunktion", response.body
    get catalog_event_path(@released)
    assert_match(/nicht gebucht werden|keine Buchungsfunktion/, response.body)
  end

  test "Besuchersicht enthaelt keine Buchungsaktion" do
    get catalog_event_path(@released)
    refute_match(/Jetzt buchen|Buchen<|buchungs_pfad/i, response.body)
  end

  test "Besuchersicht ist fuer Suchmaschinen gesperrt" do
    get catalog_path
    assert_match 'name="robots" content="noindex, nofollow"', response.body
  end
end
