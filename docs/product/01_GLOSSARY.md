# 01 · Glossar

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · Source of Truth: [`docs/business/`](../business/README.md)

Dieses Glossar definiert die im Dokumentensatz verwendeten Begriffe eindeutig. Begriffe sind mit `GL-xxx` referenzierbar. Jede Definition leitet sich aus den Gründerentscheiden/ADRs ab und trifft keine neue Entscheidung.

| ID | Begriff | Definition | Quelle |
|---|---|---|---|
| GL-001 | **Frello** | Vom Gründer gewählter Arbeits- und Produktname der geplanten Schweizer Erlebnis- und Begegnungsplattform. Kein Nachweis über Marken-, Domain- oder App-Store-Verfügbarkeit wird behauptet. | Businessplan §8; D-01/D-02/D-05 |
| GL-002 | **Betreiberin** | Geplante Betreiberin ist die bestehende **Kreativ Solutions GmbH**; Frello ist deren Produkt. Rechtlich/steuerlich EXTERN ZU PRÜFEN. | D-14; ADR-003 |
| GL-003 | **Vermittler** | Rolle von Frello: Frello vermittelt zwischen Anbieter und teilnehmender Person; der Anbieter bleibt Veranstalter, Leistungserbringer und grundsätzlich Vertragspartner. Juristische Bestätigung pro Angebot ausstehend (EXTERN ZU PRÜFEN). | D-16; ADR-003 |
| GL-004 | **Anbieter** | Organisation, die auf Frello Veranstaltungen veröffentlicht. Im MVP nur gewerbliche, institutionelle oder gemeinnützige Anbieter. | D-08; ADR-003 |
| GL-005 | **Geprüfter Anbieter** | Anbieter, der die Frello-Anbieterprüfung (u. a. Identitäts-/Registerprüfung) erfolgreich durchlaufen hat und Events einreichen darf. Prüfmassnahmen teils EXTERN ZU PRÜFEN. | D-08; §29 |
| GL-006 | **Teilnehmende Person** | Person, die an einem Event teilnimmt. Muss telefonverifiziert sein, um zu buchen; im Angehörigenmodus benötigt sie nicht zwingend ein eigenes Konto. | D-15/D-20/D-26 |
| GL-007 | **Buchende Person** | Person mit Frello-Konto, die eine Buchung vornimmt – für sich selbst oder (im Angehörigenmodus) für eine andere teilnehmende Person. | D-15/D-20 |
| GL-008 | **Angehörigenbuchung** | Buchung durch eine buchende Person für eine andere teilnehmende Person. Buchende und teilnehmende Person werden getrennt geführt; Zustimmung und Teilnehmeridentität müssen nachvollziehbar sein. Datenschutz EXTERN ZU PRÜFEN. | D-15; ADR-005 |
| GL-009 | **Gastbuchung (ausgeschlossen)** | Buchung ohne Frello-Konto. **Im MVP ausgeschlossen:** jede Buchung erfordert ein Konto (Ausnahme: teilnehmende Person im Angehörigenmodus benötigt kein eigenes Konto). | D-20; ADR-005 |
| GL-010 | **Event** | Von einem geprüften Anbieter veröffentlichte Veranstaltung mit definiertem Pflichtfeldsatz, Mindest-/Höchstteilnehmerzahl, Preis, Stornomodell und Durchführungsentscheid-Zeitpunkt. | D-31; ADR-008 |
| GL-011 | **Buchung** | Verbindliche Anmeldung einer teilnehmenden Person zu einem Event, im MVP ausschliesslich intern (keine externen Buchungen). | D-20/D-39 |
| GL-012 | **Warteliste** | Reihenfolgeliste, die geöffnet wird, wenn die Höchstteilnehmerzahl erreicht ist; folgt grundsätzlich der Eintragungsreihenfolge. | D-19; §16 |
| GL-013 | **Nachrückangebot** | Zeitlich begrenztes Buchungsangebot an die nächste berechtigte wartende Person, wenn ein Platz frei wird (regulär 12 h; bei <24 h bis Beginn 2 h Frist). | D-19 |
| GL-014 | **Broadcast-Sonderfall** | Sonderregel, wenn **weniger als zwei Stunden** vor Beginn ein Platz frei wird: gleichzeitiges Nachrückangebot an alle berechtigten Wartenden; die erste vollständig bestätigte digitale Zusage erhält den Platz. | D-44; ADR-004 |
| GL-015 | **Check-in** | Erfassung der tatsächlichen Teilnahme vor Ort durch Gastgeberbestätigung/Check-in; Voraussetzung für die Bewertungsberechtigung. | D-19/D-24; §16 |
| GL-016 | **No-show** | Nichterscheinen einer gebuchten Person ohne Absage. Erster Fall: Hinweis; bei Wiederholung: zeitweise Buchungsbegrenzung mit Einsprachemöglichkeit; keine automatische Geldstrafe. | D-19; ADR-004 |
| GL-017 | **Event-Gruppenchat** | Moderierter, ereignisbezogener Gruppenchat nur für bestätigte Teilnehmende. Keine freien 1:1-Nachrichten im MVP. | D-23; ADR-005 |
| GL-018 | **Moderation** | Menschliche Prüfung und Eingriffsmöglichkeit bei Chat, Meldungen und Sicherheitsvorfällen (Melden/Blockieren, Eskalation). Keine automatisierte oder KI-basierte Moderation im MVP. | D-23; §29 |
| GL-019 | **Strukturierte Bewertung** | Bewertung eines Events in fünf öffentlich gewichteten Kategorien (Gesamterlebnis, Organisation, Beschreibungstreue, Freundlichkeit/Betreuung, Preis-Leistung); Zugänglichkeit wird strukturiert, aber intern erfasst. Öffentliche Gesamtnote = gleichgewichteter arithmetischer Durchschnitt der fünf öffentlichen Kategorien, gerundet auf eine Dezimalstelle, sichtbar erst ab fünf bestätigten Bewertungen. | D-24/D-34; ADR-006 |
| GL-020 | **Internes Freitextfeedback** | Freitextrückmeldung Teilnehmender; bleibt im MVP intern und wird nicht öffentlich publiziert. Anbieter erhalten anonymisierte Einsicht; keine öffentliche Anbieterantwort im MVP. | D-25/D-34; ADR-006 |
| GL-021 | **Pilotparameter** | Für den Pilot gesetzter Wert (z. B. Supportzeiten, Pilotdauer 16 Wochen), dessen dauerhafte Geltung offen ist bzw. der im Pilot zu validieren ist. | D-35/D-36 |
| GL-022 | **Privacy Requirement (`PR-xxx`)** | Anforderung an Datenschutz, Sicherheit oder Audit. **Nicht** zu verwechseln mit «Pull Request». | §30; ADR-004/005/006 |
| GL-023 | **MVP** | Verbindlicher Erst-Leistungsumfang von Frello für den Pilot (Minimum Viable Product), wie in [`00_PRODUCT_SPEC_V0.1.md`](./00_PRODUCT_SPEC_V0.1.md) abgegrenzt. Entspricht dem im Research verwendeten «V1». | §35; D-46 |
| GL-024 | **Installierbare PWA** | Responsive, installierbare Web-App als **verbindliches MVP-Launch-Ziel**. Technische Umsetzung (Framework etc.) ist nicht Teil dieser Spezifikation. | D-46; ADR-007 |
| GL-025 | **Native Fast-Follow-App** | Native iOS-/Android-App, früh/parallel als Fast-Follow vorbereitet, aber **nicht Teil des MVP-Launch** und nur nach separater ausdrücklicher Gründerfreigabe (Gesamtbewertung) umzusetzen. | D-45/D-46; ADR-007 |
| GL-026 | **Dichteschwelle** | Voraussetzung je Pilotstadt: mindestens fünf geprüfte Anbieter und mindestens zehn kommende Termine. | D-29; ADR-002 |
| GL-027 | **Gemeinsamer Pilotstart** | Der offizielle Pilot beginnt gleichzeitig in Zürich, Basel, Bern und Luzern, erst wenn alle vier Städte die Dichteschwelle erfüllen. | D-37; ADR-002 |
| GL-028 | **Anbieterprüfung / Eventfreigabe** | Manuelle Prüfprozesse durch Frello: Anbieter werden verifiziert; jedes Event durchläuft eine vollständige manuelle Freigabe (Entwurf → freigegeben / abgelehnt / zur Überarbeitung zurückgegeben). | D-08/D-33; ADR-008 |
| GL-029 | **Stornomodell** | Eines von drei durch Frello definierten Modellen (Flexibel, Standard, Fix), das der Anbieter je Event wählt; freie eigene Klauseln sind nicht erlaubt. | D-18; ADR-004 |
| GL-030 | **Buchungsübertragung** | Übertragung einer Buchung an eine andere Person (bis 24 h vor Beginn selbstständig, darunter nur über den Support); Empfänger benötigt Konto und abgeschlossene Telefonverifikation. | D-40; ADR-004 |
