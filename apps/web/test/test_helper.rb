ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

# Test-Schalter: laesst AuditTrail.record! gezielt fehlschlagen, ohne das
# Produktionsverhalten dauerhaft zu veraendern (Thread-lokal, je Test gesetzt).
module AuditTrailFailSwitch
  def record!(**kwargs)
    if Thread.current[:frello_test_fail_audit]
      raise ActiveRecord::RecordInvalid, AuditEntry.new
    end

    super
  end
end
AuditTrail.singleton_class.prepend(AuditTrailFailSwitch)

# Zufaelliges Passwort je Testlauf: in keiner Quelldatei steht ein Passwortwert.
TEST_ACCOUNT_PASSWORD = SecureRandom.alphanumeric(20).freeze

module ActiveSupport
  class TestCase
    parallelize(workers: 1)

    # Baukasten fuer synthetische Testdaten.
    def create_provider(status: "verified_active", **attrs)
      Provider.create!({
        organisation_name: "Testanbieter #{SecureRandom.hex(4)}",
        provider_type: "nonprofit",
        contact_person_name: "Testperson",
        contact_email: "t@prototyp.invalid",
        contact_phone: "+41 00 000 00 00",
        business_address: "Teststrasse 1",
        business_postal_code: "8000",
        business_city: "Zürich",
        status: status, synthetic: true
      }.merge(attrs))
    end

    def create_curation_user
      InternalUser.create!(email: "k#{SecureRandom.hex(4)}@prototyp.invalid",
                           password: TEST_ACCOUNT_PASSWORD, role: "curation",
                           display_name: "Testkuration")
    end

    def create_provider_user(provider)
      InternalUser.create!(email: "a#{SecureRandom.hex(4)}@prototyp.invalid",
                           password: TEST_ACCOUNT_PASSWORD, role: "provider",
                           display_name: "Testanbieterkonto", provider: provider)
    end

    COMPLETE_EVENT = {
      title: "Testangebot", short_description: "Eine verständliche Kurzbeschreibung.",
      category: "Essen & Genuss", venue_name: "Testhaus",
      full_address: "Teststrasse 1, 8000", city_region: "Zürich",
      price_chf: 10.0, payment_method: "online", min_participants: 2,
      max_participants: 10, cancellation_model: "standard", language: "de",
      contact_option: "Telefonisch", accessibility_info: "Stufenlos",
      alone_welcome: true
    }.freeze

    def create_event(provider, status: "draft", complete: true, **attrs)
      base = complete ? COMPLETE_EVENT.dup : {}
      date = attrs.delete(:event_date) || 30.days.from_now.to_date
      Event.create!(base.merge(
        provider: provider, status: status, synthetic: true, event_date: complete ? date : nil,
        start_time: complete ? "14:00" : nil, end_time: complete ? "16:00" : nil,
        booking_deadline_at: complete ? (date - 3).to_time : nil,
        decision_point_at: complete ? (date - 2).to_time : nil
      ).merge(attrs))
    end
  end
end

module FailingAudit
  def with_failing_audit
    Thread.current[:frello_test_fail_audit] = true
    yield
  ensure
    Thread.current[:frello_test_fail_audit] = nil
  end
end
ActiveSupport::TestCase.include(FailingAudit)

class ActionDispatch::IntegrationTest
  def sign_in_as(user)
    post sign_in_path, params: { email: user.email, password: TEST_ACCOUNT_PASSWORD }
  end
end
