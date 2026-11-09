require "test_helper"

# Befund 4: synthetischer Testwert "belegte Plaetze" nicht ueber der Hoechstzahl.
class SyntheticBookedCountTest < ActiveSupport::TestCase
  setup { @provider = create_provider }

  test "Grenze: belegte Plaetze gleich Hoechstzahl ist zulaessig" do
    event = create_event(@provider, max_participants: 10, synthetic_booked_count: 10)
    assert event.valid?
    assert_equal 0, event.synthetic_available_places
  end

  test "Ueberschreitung der Hoechstzahl wird abgewiesen" do
    event = create_event(@provider, max_participants: 10)
    event.synthetic_booked_count = 11
    refute event.valid?
    assert event.errors[:synthetic_booked_count].any?
  end

  test "unvollstaendiger Entwurf ohne Hoechstzahl bleibt speicherbar" do
    event = Event.new(provider: @provider, status: "draft", synthetic: true,
                      title: "Nur Titel", synthetic_booked_count: 3)
    assert event.save, event.errors.full_messages.to_sentence
    assert_nil event.max_participants
    assert_nil event.synthetic_available_places
  end
end
