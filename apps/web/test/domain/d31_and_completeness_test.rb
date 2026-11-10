require "test_helper"

# Prueft den Pflichtfeldsatz D-31 und die Vollstaendigkeitspruefung BR-005/AC-034.
class D31AndCompletenessTest < ActiveSupport::TestCase
  test "D-31 fuehrt genau 21 immer erforderliche Angaben" do
    assert_equal 21, D31::ALWAYS_REQUIRED.size
  end

  test "D-31 fuehrt 5 aktive bedingte Angaben plus die im MVP inaktive externe Buchungskennzeichnung" do
    assert_equal 5, D31::CONDITIONAL.size
    assert_equal :not_applicable_mvp, D31::EXTERNAL_BOOKING_MARKER.kind
    # Zusammen sechs bedingt erforderliche Angaben nach D-31.
    assert_equal 6, D31::CONDITIONAL.size + 1
  end

  test "D-31 fuehrt 3 freiwillige Angaben" do
    assert_equal 3, D31::OPTIONAL.size
  end

  test "vollstaendiger Entwurf ist einreichbar" do
    event = create_event(create_provider)
    assert event.completeness.submittable?
    assert_empty event.completeness.missing
  end

  # Die 20 vom Anbieter eingegebenen Angaben (d31.01-17, d31.19-21) werden hier
  # einzeln auf Fehlen geprueft. Angabe 18 "verantwortlicher geprueften Anbieter"
  # wird NICHT eingegeben, sondern serverseitig aus der Sitzung zugeordnet; sie
  # laesst sich nicht auf NULL setzen (NOT-NULL-Fremdschluessel) und hat daher
  # eigene Nachweise weiter unten.
  test "jede fehlende eingegebene Pflichtangabe wird einzeln gemeldet" do
    provider = create_provider
    (D31::ALWAYS_REQUIRED.map(&:attribute) - [ :provider_id ]).each do |attribute|
      event = create_event(provider)
      event.update_column(attribute, nil)
      event.reload
      missing_labels = event.completeness.missing.map(&:label)
      expected = D31::ALWAYS_REQUIRED.find { |f| f.attribute == attribute }.label
      assert_includes missing_labels, expected,
        "Fehlende Angabe #{attribute} wurde nicht als fehlend erkannt"
      refute event.completeness.submittable?
    end
  end

  test "bedingte Angabe ist nur bei ausdruecklicher Relevanz erforderlich" do
    event = create_event(create_provider)
    assert event.completeness.submittable?, "ohne Relevanzmarkierung einreichbar"

    event.update!(catering_relevant: true)
    refute event.completeness.submittable?, "als einschlaegig markiert und leer -> fehlt"

    event.update!(catering_info: "Kaffee und Kuchen")
    assert event.completeness.submittable?
  end

  test "AC-034 Qualifikationsnachweis ist bei Bewegung und Natur zwingend" do
    event = create_event(create_provider, category: "Bewegung & Natur")
    assert event.completeness.qualification_forced?
    refute event.completeness.submittable?,
      "ohne Qualifikationsnachweis darf ein Bewegungsangebot nicht einreichbar sein"

    event.update!(qualification_evidence: "Synthetischer Nachweis")
    assert event.completeness.submittable?
  end

  test "Qualifikationsnachweis ist bei anderen Kategorien nicht erzwungen" do
    event = create_event(create_provider, category: "Kultur & Unterhaltung")
    refute event.completeness.qualification_forced?
    assert event.completeness.submittable?
  end

  test "externe Buchungskennzeichnung bleibt im MVP nicht anwendbar und blockiert nicht" do
    event = create_event(create_provider)
    finding = event.completeness.findings.find { |f| f.key == D31::EXTERNAL_BOOKING_MARKER.key }
    assert_equal :not_applicable, finding.state
    refute finding.missing?
  end

  test "externe Buchungskennzeichnung laesst sich nicht aktivieren D-39" do
    event = create_event(create_provider)
    event.external_booking_marker = true
    refute event.valid?
    assert_raises(ActiveRecord::StatementInvalid) do
      event.update_column(:external_booking_marker, true)
    end
  end

  test "freiwillige Angaben blockieren die Einreichung nicht" do
    event = create_event(create_provider)
    assert event.completeness.submittable?
    optional = event.completeness.findings.select { |f| f.kind == :optional }
    assert_equal 3, optional.size
    assert optional.none?(&:missing?)
  end

  # --- D-31 Angabe 18: verantwortlicher GEPRUEFTER Anbieter -----------------

  test "Angabe 18 ist nur mit verifiziertem Anbieter erfuellt" do
    %w[registered in_review rejected suspended].each do |status|
      event = create_event(create_provider(status: status))
      finding = event.completeness.findings.find { |f| f.key == "d31.18" }
      assert_equal :missing, finding.state, "Anbieter im Zustand #{status} ist nicht geprueft"
      refute event.completeness.submittable?
    end
    verified = create_event(create_provider(status: "verified_active"))
    assert_equal :present, verified.completeness.findings.find { |f| f.key == "d31.18" }.state
  end

  test "Angabe 18 ist auf Modellebene verpflichtend" do
    event = Event.new(COMPLETE_EVENT.merge(status: "draft", synthetic: true))
    refute event.valid?
    assert event.errors[:provider].any?
  end

  test "Angabe 18 ist auf Datenbankebene verpflichtend und referenziell gesichert" do
    event = create_event(create_provider)
    # Je Versuch ein eigener Savepoint, damit der erste Fehler den zweiten nicht verdeckt.
    assert_raises(ActiveRecord::NotNullViolation) do
      Event.transaction(requires_new: true) { event.update_column(:provider_id, nil) }
    end
    assert_raises(ActiveRecord::InvalidForeignKey) do
      Event.transaction(requires_new: true) { event.update_column(:provider_id, 9_999_999) }
    end
    assert_not_nil event.reload.provider_id
  end

  test "Freigabe ist ohne verifizierten verantwortlichen Anbieter ausgeschlossen" do
    unverified = create_provider(status: "in_review")
    event = create_event(unverified, status: "in_review")
    result = Services::DecideEventReview.new(event: event, actor: create_curation_user,
                                             outcome: "released", note: "Vermerk").call
    refute result.ok?
    assert_equal "in_review", event.reload.status
  end

  test "Zuordnung der 21 immer erforderlichen Angaben ist vollstaendig" do
    keys = D31::ALWAYS_REQUIRED.map(&:key)
    assert_equal (1..21).map { |i| format("d31.%02d", i) }, keys
    assert_equal :provider_id, D31::ALWAYS_REQUIRED.find { |f| f.key == "d31.18" }.attribute
    # Jede Angabe muss eine Spalte des Events sein.
    D31::ALWAYS_REQUIRED.each do |field|
      assert_includes Event.column_names, field.attribute.to_s
    end
  end
end
