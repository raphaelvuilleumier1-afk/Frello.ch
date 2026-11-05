require "test_helper"

# Automatisiert pruefbare Teilaspekte der UX-Grundlage.
#
# WICHTIG: Diese Pruefungen belegen KEINE vollstaendige WCAG-2.2-AA-Konformitaet.
# Sie pruefen nur einzelne, im Markup und im Stylesheet nachweisbare Merkmale.
# Die uebrigen Erfolgskriterien erfordern manuelle Pruefung (siehe
# docs/implementation/PROTOTYPE_01.md).
class AccessibilityMarkupTest < ActionDispatch::IntegrationTest
  setup do
    @provider = create_provider
    @event = create_event(@provider, status: "released", title: "Barrierefreiheitstest")
    @user = create_provider_user(@provider)
    @curation = create_curation_user
  end

  def all_pages
    pages = [ catalog_path, catalog_event_path(@event), sign_in_path ]
    pages
  end

  test "Seiten tragen die Sprachkennzeichnung Deutsch" do
    all_pages.each do |path|
      get path
      assert_match 'lang="de-CH"', response.body, "Sprachkennzeichnung fehlt auf #{path}"
    end
  end

  test "Seiten haben eine Sprungmarke zum Inhalt und ein main-Element" do
    all_pages.each do |path|
      get path
      assert_match 'class="skip-link" href="#inhalt"', response.body
      assert_match '<main id="inhalt">', response.body
    end
  end

  test "Seiten haben genau eine Hauptueberschrift" do
    all_pages.each do |path|
      get path
      assert_equal 1, response.body.scan(/<h1[\s>]/).size, "#{path} braucht genau ein h1"
    end
  end

  test "Navigation traegt eine Bezeichnung" do
    get catalog_path
    assert_match 'aria-label="Hauptnavigation"', response.body
  end

  test "Suchformular arbeitet mit GET und funktioniert ohne JavaScript" do
    get catalog_path
    assert_match(/<form action="\/katalog" method="get"/, response.body)
    refute_match(/<script/, response.body, "die Suchseite darf ohne JavaScript auskommen")
  end

  test "Formularablaeufe kommen ohne JavaScript aus" do
    sign_in_as(@user)
    [ provider_events_path, new_provider_event_path ].each do |path|
      get path
      refute_match(/<script/, response.body, "#{path} darf ohne JavaScript auskommen")
    end
  end

  test "jedes Eingabefeld des Eventformulars hat eine verknuepfte Beschriftung" do
    sign_in_as(@user)
    get new_provider_event_path
    ids = response.body.scan(/<(?:input|select|textarea)[^>]*\sid="([^"]+)"/).flatten
    ids -= [ "authenticity_token" ]
    labelled = response.body.scan(/<label[^>]*\sfor="([^"]+)"/).flatten
    wrapped = response.body.scan(/<label[^>]*>.*?<(?:input|select|textarea)[^>]*\sid="([^"]+)"/m).flatten
    ids.each do |id|
      next if id.blank?
      assert (labelled + wrapped).include?(id),
        "Feld #{id} hat keine verknuepfte Beschriftung"
    end
  end

  test "Pflichtangaben sind im Text gekennzeichnet, nicht nur farblich" do
    sign_in_as(@user)
    get new_provider_event_path
    assert_operator response.body.scan("(Pflichtangabe)").size, :>=, 15,
      "Pflichtangaben muessen im Text als solche erkennbar sein"
  end

  test "Fehlerzusammenfassung verlinkt auf die betroffenen Felder" do
    sign_in_as(create_curation_user)
    post curation_providers_path, params: { provider: { organisation_name: "" } }
    assert_response :unprocessable_entity
    assert_match 'class="error-summary"', response.body
    assert_match 'role="alert"', response.body
    assert_match 'href="#provider_organisation_name"', response.body
  end

  test "Anrede Sie wird verwendet, nicht Du" do
    all_pages.each do |path|
      get path
      refute_match(/\bDu\b|\bDein(e|en|em|er)?\b/, response.body, "#{path} muss die Sie-Form verwenden")
    end
    get catalog_path
    assert_match(/\bSie\b/, response.body)
  end

  test "Stylesheet setzt relative Grundschrift und Zielgroesse" do
    css = File.read(Rails.root.join("app/assets/stylesheets/application.css"))
    assert_match(/html\s*\{\s*font-size:\s*112\.5%/, css,
      "Grundschrift muss relativ gesetzt sein (112.5 % von 16 px = 18 px)")
    assert_match(/--target:\s*44px/, css)
    assert_match(/:focus-visible/, css, "sichtbarer Fokus muss definiert sein")
    refute_match(/outline:\s*none/, css, "der Fokus darf nicht entfernt werden")
  end

  test "keine Markenassets und keine Markenfarben in der Oberflaeche" do
    all_pages.each do |path|
      get path
      refute_match(/frello-symbol|frello-wordmark/i, response.body, "Markenmaster in #{path}")
      refute_match(/FF584D|4E1354/i, response.body, "Markenfarbe in #{path}")
    end
    css = File.read(Rails.root.join("app/assets/stylesheets/application.css"))
    refute_match(/FF584D|4E1354/i, css, "Markenfarbe im Stylesheet")
  end

  # Regression: submit_tag mit value: zeigte die internen Werte (released, verify ...)
  # statt der deutschen Beschriftung an.
  test "Entscheidknoepfe der Kuration tragen deutsche Beschriftungen, nicht interne Werte" do
    sign_in_as(@curation)
    pending = create_event(@provider, status: "in_review", title: "Knopftest")
    get curation_event_path(pending)
    { "released" => "Freigeben", "returned" => "Zur Überarbeitung zurückgeben",
      "rejected" => "Ablehnen" }.each do |value, label|
      assert_match %r{<button[^>]*value="#{value}"[^>]*>#{Regexp.escape(label)}</button>}, response.body
    end
    refute_match(/<input[^>]*type="submit"[^>]*value="(released|returned|rejected)"/, response.body)

    reviewing = create_provider(status: "in_review")
    get curation_provider_path(reviewing)
    { "verify" => "Verifizieren", "reject" => "Ablehnen" }.each do |value, label|
      assert_match %r{<button[^>]*value="#{value}"[^>]*>#{label}</button>}, response.body
    end
    refute_match(/<input[^>]*type="submit"[^>]*value="(verify|reject)"/, response.body)
  end
end
