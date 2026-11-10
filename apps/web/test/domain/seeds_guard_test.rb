require "test_helper"

# Befund 6: Ein normaler Seed-Aufruf darf vorhandene Daten nicht still loeschen.
class SeedsGuardTest < ActiveSupport::TestCase
  SEEDS = Rails.root.join("db/seeds.rb")

  def counts = [ Provider.count, Event.count, InternalUser.count, AuditEntry.count ]

  def with_env(values)
    previous = values.keys.to_h { |k| [ k, ENV[k] ] }
    values.each { |k, v| ENV[k] = v }
    yield
  ensure
    previous.each { |k, v| ENV[k] = v }
  end

  test "nicht leere Datenbank: Abbruch vor jeder Loeschung" do
    provider = create_provider(organisation_name: "Vorhandener Testdatensatz")
    before = counts
    with_env("FRELLO_SEED_RESET" => nil) do
      error = assert_raises(RuntimeError) { capture_io { load SEEDS } }
      assert_match "Es wurde nichts geloescht", error.message
    end
    assert_equal before, counts
    assert Provider.exists?(provider.id), "vorhandener Datensatz muss erhalten bleiben"
  end

  test "Schalter muss ausdruecklich 1 lauten" do
    create_provider
    before = counts
    with_env("FRELLO_SEED_RESET" => "true") do
      assert_raises(RuntimeError) { capture_io { load SEEDS } }
    end
    assert_equal before, counts
  end

  test "bewusster Reset mit FRELLO_SEED_RESET=1 ersetzt die Daten" do
    marker = create_provider(organisation_name: "Wird beim Reset ersetzt")
    with_env("FRELLO_SEED_RESET" => "1", "FRELLO_PROTOTYPE_PASSWORD" => SecureRandom.alphanumeric(12)) do
      capture_io { load SEEDS }
    end
    refute Provider.exists?(marker.id)
    assert_equal 4, Provider.count
    assert_equal 8, Event.count
  end

  test "leere Datenbank: Seeds laufen ohne Schalter" do
    assert_equal [ 0, 0, 0, 0 ], counts
    with_env("FRELLO_SEED_RESET" => nil, "FRELLO_PROTOTYPE_PASSWORD" => SecureRandom.alphanumeric(12)) do
      capture_io { load SEEDS }
    end
    assert_equal 4, Provider.count
  end
end
