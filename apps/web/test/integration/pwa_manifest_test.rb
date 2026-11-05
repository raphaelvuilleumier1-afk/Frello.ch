require "test_helper"

# PWA als getrenntes Testpaket.
# Geprueft wird ausschliesslich die INSTALLIERBARKEIT (Manifest + Icons).
# Offline-Verhalten und Push sind ausdruecklich NICHT Bestandteil.
#
# Quelle der Anforderungen (abgerufen 05.11.2026):
#   MDN, "Making PWAs installable" – Manifest erforderlich, HTTPS bzw.
#   localhost/127.0.0.1; Chromium verlangt zusaetzlich name oder short_name,
#   icons mit 192 px und 512 px, start_url, display, prefer_related_applications
#   false oder nicht vorhanden. Ein Service Worker ist fuer die Installierbarkeit
#   NICHT erforderlich.
class PwaManifestTest < ActionDispatch::IntegrationTest
  setup do
    get pwa_manifest_path
    @manifest = JSON.parse(response.body)
  end

  test "Manifest wird mit korrektem Medientyp ausgeliefert" do
    assert_response :success
    assert_equal "application/manifest+json", response.media_type
  end

  test "Manifest erfuellt die Chromium-Mitgliederliste" do
    assert @manifest["name"].present? || @manifest["short_name"].present?
    assert @manifest["start_url"].present?
    assert @manifest["display"].present?
    assert_equal false, @manifest["prefer_related_applications"]
    sizes = @manifest["icons"].map { |i| i["sizes"] }
    assert_includes sizes, "192x192"
    assert_includes sizes, "512x512"
  end

  test "display standalone ist gesetzt" do
    assert_equal "standalone", @manifest["display"]
  end

  test "Manifest ist in jeder Seite verlinkt" do
    get catalog_path
    assert_match %r{<link rel="manifest" href="/manifest.webmanifest">}, response.body
  end

  test "alle Icons sind vorhanden und tragen die angegebene Groesse" do
    @manifest["icons"].each do |icon|
      path = Rails.root.join("public", icon["src"].delete_prefix("/"))
      assert File.exist?(path), "Icon fehlt: #{icon["src"]}"
      assert_equal "image/png", icon["type"]
    end
  end

  test "es gibt bewusst keinen Service Worker" do
    refute File.exist?(Rails.root.join("public/service-worker.js"))
    refute File.exist?(Rails.root.join("app/views/pwa/service-worker.js"))
    get catalog_path
    refute_match(/serviceWorker|service-worker/i, response.body,
      "kein Service Worker: weder Offline- noch Push-Funktionen")
  end

  test "Icons sind markenneutral und keine Ableitung der Markenmaster" do
    readme = File.read(Rails.root.join("public/icons/README.txt"))
    assert_match "markenneutral", readme
    assert_match "keine ableitung", readme.downcase.tr("\n", " ")
  end
end
