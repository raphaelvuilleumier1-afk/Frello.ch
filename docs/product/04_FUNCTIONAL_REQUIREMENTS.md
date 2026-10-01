# 04 · Funktionale Anforderungen

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Geschäftsregeln](./05_BUSINESS_RULES.md) · [Zustände](./06_STATE_MODELS.md) · [Datenobjekte](./07_DATA_OBJECTS.md)

Funktionale MVP-Anforderungen, abgeleitet aus Gründerentscheiden/ADRs. Format je FR: Klasse · Beschreibung · Akteure · Vorbedingungen · Ergebnis · Quelle · Bezüge (BR/ST/DO/EXC/AC) · ggf. OP. Aussageklassen siehe [README](./README.md#aussageklassen).

---

### Entdecken und Anzeige

**FR-001 · Eventsuche** — VERBINDLICH
Frello bietet eine regionale Eventsuche über freigegebene Events. *Akteure:* alle. *Vorbedingung:* Events freigegeben (ST-002). *Ergebnis:* Liste passender Events. *Quelle:* D-09/D-10/D-29; ADR-002 (§12/§16). *Bezüge:* BR-006/BR-027, DO-007, AC-001.

**FR-002 · MVP-Pflichtfilter** — VERBINDLICH
Die Suche stellt genau die MVP-Filter bereit: Stadt/Region, Datum/Zeitraum, Kategorie, Preis, kostenlos, Zugänglichkeit, Aktivitätsniveau, «Alleine willkommen», verfügbare Plätze. Weitere Filter sind zurückgestellt. *Akteure:* alle. *Ergebnis:* gefilterte Trefferliste. *Quelle:* D-32; ADR-008. *Bezüge:* BR-006, DO-007, AC-002, OP-032.

**FR-003 · Sichtbarkeit für nicht angemeldete Besucher** — VERBINDLICH
Nicht angemeldete Besucher sehen bei Events nur die Teilnehmerzahl, keine Namen/Profile. *Akteure:* Besucher. *Ergebnis:* eingeschränkte Anzeige. *Quelle:* D-21; ADR-005. *Bezüge:* BR-023, PR-008, AC-003.

**FR-004 · Eventdetailanzeige mit Pflichtfeldern** — VERBINDLICH
Die Eventdetailseite zeigt die Pflichtangaben nach D-31 (u. a. Preis, Ort, Adresse, Zeiten, Stornomodell, Zugänglichkeit, «Alleine willkommen», Zahlungsart). *Akteure:* alle. *Vorbedingung:* Event freigegeben. *Ergebnis:* vollständige Detailansicht. *Quelle:* D-31; ADR-008. *Bezüge:* BR-005, DO-007, AC-004.

### Konto, Verifikation, Profil

**FR-005 · Kontoerstellung, keine Gastbuchung** — VERBINDLICH
Buchen erfordert ein Frello-Konto; Gastbuchung ist ausgeschlossen. *Akteure:* Besucher → Kontoinhaber. *Ergebnis:* Konto (ST-006). *Quelle:* D-20; ADR-005. *Bezüge:* BR-002, DO-001, AC-005.

**FR-006 · Telefonnummerverifikation vor erster Buchung** — VERBINDLICH
Vor der ersten Buchung ist die Telefonnummer zu verifizieren; sie ist für andere nicht sichtbar. *Akteure:* Kontoinhaber. *Vorbedingung:* Konto vorhanden. *Ergebnis:* Status `telefonverifiziert`. *Quelle:* D-26; ADR-005. *Bezüge:* BR-003, ST-006, PR-004, AC-006.

**FR-007 · Profil-Steckbrief** — VERBINDLICH
Kontoinhaber pflegen einen sicheren Steckbrief (Vorname/Anzeigename, Region, Sprachen, Interessen, Aktivitätsniveau, freiwilliges Foto, freiwilliges Generationsband). *Akteure:* Kontoinhaber. *Ergebnis:* Profil (DO-002). *Quelle:* D-21/D-22; ADR-005 (§15). *Bezüge:* BR-023, PR-003, AC-007.

**FR-008 · Sichtbarkeitsregeln des Profils** — VERBINDLICH
Bestätigte Teilnehmende sehen Vorname und freiwilliges Foto ihrer Eventgruppe; nur freiwilliges Generationsband, kein genaues Geburtsdatum, keine Telefonnummer. *Akteure:* Teilnehmende. *Quelle:* D-21/D-22; ADR-005. *Bezüge:* BR-023, PR-005/PR-008, AC-008.

### Buchung und Zahlung

**FR-009 · Verbindliche interne Buchung** — VERBINDLICH
Teilnehmende buchen Events verbindlich und ausschliesslich intern (keine externen Buchungen). *Akteure:* Teilnehmende/Angehörige. *Vorbedingung:* telefonverifiziert; Plätze frei. *Ergebnis:* Buchung (ST-003). *Quelle:* D-20/D-39; ADR-005/ADR-003. *Bezüge:* BR-002/BR-015, DO-009, EXC-005, AC-009.

**FR-010 · Online-Zahlung** — TEILWEISE BESCHLOSSEN
Online-Zahlung je Event möglich (Vollzahlung). Regulierter Zahlungsfluss EXTERN ZU PRÜFEN. *Akteure:* Teilnehmende/Angehörige. *Ergebnis:* Buchung `bezahlt/bestätigt`. *Quelle:* D-17; ADR-004. *Bezüge:* BR-013/BR-014, DO-010, EXC-005, AC-010, OP-008.

**FR-011 · Zahlung vor Ort** — TEILWEISE BESCHLOSSEN
Zahlung vor Ort je Event möglich. Provisionsabrechnung bei Vor-Ort-Zahlung EXTERN ZU PRÜFEN. *Akteure:* Teilnehmende/Angehörige. *Ergebnis:* Buchung `bestätigt` (Zahlung vor Ort). *Quelle:* D-17; ADR-004. *Bezüge:* BR-013, DO-010, AC-011, OP-008.

**FR-012 · Vollzahlung, keine Teilzahlung** — VERBINDLICH
Online-Buchungen werden vollständig bezahlt; Teil-/Ratenzahlungen sind ausgeschlossen. *Akteure:* Teilnehmende/Angehörige. *Quelle:* D-41; ADR-004. *Bezüge:* BR-014, DO-010, AC-012, OP-028.

**FR-013 · Angehörigenbuchung** — VERBINDLICH
Eine buchende Person kann für eine andere teilnehmende Person buchen; beide werden getrennt geführt; Zustimmung/Identität nachvollziehbar. *Akteure:* Angehörige (buchend). *Vorbedingung:* Konto + Telefonverifikation der buchenden Person. *Ergebnis:* Buchung mit getrennter Teilnehmeridentität (DO-004). *Quelle:* D-15; ADR-005. *Bezüge:* BR-025, PR-006, AC-013, OP-010.

### Warteliste und Nachrücken

**FR-014 · Warteliste bei Höchstzahl** — VERBINDLICH
Bei Erreichen der Höchstteilnehmerzahl öffnet eine Warteliste in Eintragungsreihenfolge. *Akteure:* Teilnehmende. *Ergebnis:* Wartelisteneintrag (ST-004). *Quelle:* D-19; ADR-004. *Bezüge:* BR-007/BR-008, DO-011, EXC-002, AC-014.

**FR-015 · Reguläres Nachrückangebot** — VERBINDLICH
Wird ein Platz frei, erhält die erste berechtigte wartende Person ein befristetes Angebot (regulär 12 h; bei <24 h bis Beginn 2 h). Nach Ablauf rückt die nächste Person nach. *Akteure:* Teilnehmende; System. *Quelle:* D-19; ADR-004. *Bezüge:* BR-008, ST-005, DO-012, EXC-003, AC-015.

**FR-016 · Broadcast-Sonderfall <2 h** — VERBINDLICH
Wird <2 h vor Beginn ein Platz frei, geht das Angebot gleichzeitig an alle berechtigten Wartenden; die erste vollständig bestätigte digitale Zusage erhält den Platz; sonst bleibt er frei; keine Vor-Ort-Vergabe an unverifizierte Personen (D-20/D-26 gelten). *Akteure:* Teilnehmende; System. *Quelle:* D-44; ADR-004. *Bezüge:* BR-009, DO-012, EXC-004, AC-016, OP-002.

### Storno, Durchführung, No-show

**FR-017 · Stornomodell-Auswahl durch Anbieter** — VERBINDLICH
Der Anbieter wählt je Event eines von drei Frello-Stornomodellen (Flexibel/Standard/Fix); keine freien Klauseln. *Akteure:* Anbieter. *Quelle:* D-18; ADR-004. *Bezüge:* BR-010, DO-007/DO-014, AC-017, OP-009.

**FR-018 · Teilnehmerstornierung nach Modell** — VERBINDLICH
Teilnehmende/Angehörige stornieren gemäss dem gewählten Modell; Rückerstattung entsprechend. *Akteure:* Teilnehmende/Angehörige/Support. *Ergebnis:* Buchung `storniert`, ggf. Rückerstattung. *Quelle:* D-18; ADR-004. *Bezüge:* BR-010, ST-003/ST-009, DO-014/DO-015, EXC-015, AC-018, OP-009.

**FR-019 · Durchführungsentscheid und Mindestzahl-Absage** — VERBINDLICH
Der Durchführungsentscheid erfolgt grundsätzlich spätestens 48 h vor Beginn; bei Nichterreichen der Mindestzahl kann der Anbieter absagen oder durchführen; bei Absage Rückerstattung nach Regeln. *Akteure:* Anbieter. *Quelle:* D-19; ADR-004. *Bezüge:* BR-011, ST-002, EXC-001, AC-019.

**FR-020 · Anbieterabsage mit voller Rückerstattung** — TEILWEISE BESCHLOSSEN
Bei Anbieterabsage (inkl. Wetter/kurzfristig) und Online-Zahlung: volle Rückerstattung als Standard und Wahlrecht; optional Ersatztermin/Umbuchung. *Akteure:* Anbieter; Frello. *Quelle:* D-42; ADR-004. *Bezüge:* BR-018, ST-002/ST-009, EXC-006/EXC-007, AC-020, OP-009.

**FR-021 · Leistungsausfall** — TEILWEISE BESCHLOSSEN
Bei Ausfall einer zentralen Leistung: wie FR-020, zusätzlich aktive Information der Betroffenen, Audit-Dokumentation, wiederholte Ausfälle als internes Qualitätssignal. *Akteure:* Anbieter; Frello. *Quelle:* D-43; ADR-004. *Bezüge:* BR-019, EXC-008, PR-011, DO-024, AC-021, OP-009.

**FR-022 · Rückerstattung/Umbuchung mit Wahlrecht** — TEILWEISE BESCHLOSSEN
Betroffene wählen zwischen voller Rückerstattung und angebotener Umbuchung; keine Umbuchungspflicht. *Akteure:* Teilnehmende; Frello. *Quelle:* D-42/D-43; ADR-004. *Bezüge:* BR-018/BR-019, ST-009, DO-015, EXC-015, AC-022, OP-009.

**FR-023 · Buchungsübertragung** — TEILWEISE BESCHLOSSEN
Übertragung bis 24 h vor Beginn selbstständig an eine Person mit Konto und abgeschlossener Telefonverifikation; darunter nur über Support. Platzanzahl unverändert; Rechte wandern; protokolliert. *Akteure:* Teilnehmende/Support. *Quelle:* D-40; ADR-004. *Bezüge:* BR-017, ST-003, DO-013, EXC-009, PR-007, AC-023, OP-003/OP-011.

**FR-024 · No-show-Behandlung** — VERBINDLICH
Erster No-show: Hinweis; Wiederholung: zeitweise Buchungsbegrenzung mit Einsprache; keine automatische Geldstrafe. *Akteure:* System/Moderation. *Quelle:* D-19; ADR-004. *Bezüge:* BR-012, ST-006/ST-007, EXC-010, AC-024.

### Kommunikation und Teilnahme

**FR-025 · Moderierter Event-Gruppenchat** — VERBINDLICH
Bestätigte Teilnehmende nutzen einen moderierten Gruppenchat je Event; keine freien 1:1-Nachrichten; Telefonnummern verborgen. *Akteure:* Teilnehmende; Anbieter; Moderation. *Quelle:* D-23; ADR-005. *Bezüge:* BR-024, DO-019/DO-020, PR-009, AC-025.

**FR-026 · Melden/Blockieren** — VERBINDLICH
Im Chat/Umfeld können Personen und Nachrichten gemeldet und blockiert werden; menschliche Moderation. *Akteure:* Teilnehmende; Anbieter; Moderation. *Quelle:* D-23; ADR-005 (§29). *Bezüge:* BR-024, DO-021/DO-022, PR-012, EXC-012, AC-026.

**FR-027 · Check-in / Teilnahmebestätigung** — VERBINDLICH
Die tatsächliche Teilnahme wird per Check-in/Gastgeberbestätigung erfasst; Voraussetzung der Bewertungsberechtigung. *Akteure:* Anbieter. *Quelle:* D-19/D-24; ADR-004/ADR-006 (§16). *Bezüge:* BR-020, ST-007, DO-016, AC-027.

### Bewertungen

**FR-028 · Bewertungsberechtigung** — VERBINDLICH
Nur verifiziert angemeldete und tatsächlich teilgenommene/eingecheckte Personen dürfen bewerten. *Akteure:* Teilnehmende. *Quelle:* D-24; ADR-006. *Bezüge:* BR-020, ST-008, AC-028.

**FR-029 · Strukturierte Bewertung** — VERBINDLICH
Bewertung in fünf öffentlichen Kategorien; Zugänglichkeit strukturiert, aber intern. *Akteure:* Teilnehmende. *Quelle:* D-34; ADR-006. *Bezüge:* BR-021, DO-017, AC-029.

**FR-030 · Öffentliche Gesamtnote ab fünf** — VERBINDLICH
Öffentliche Gesamtnote = gleichgewichteter arithmetischer Durchschnitt der fünf öffentlichen Kategorien, gerundet auf eine Dezimalstelle, sichtbar erst ab fünf Bewertungen mit sichtbarer Anzahl. *Akteure:* System; alle (Anzeige). *Quelle:* D-24/D-34; ADR-006. *Bezüge:* BR-021, ST-008, DO-017, AC-030.

**FR-031 · Internes Feedback und Anbieterrechte** — VERBINDLICH
Freitextfeedback bleibt intern; Anbieter erhalten anonymisierte Einsicht und nicht öffentliche Einsprache; keine öffentliche Anbieterantwort im MVP. *Akteure:* Teilnehmende; Anbieter; Frello. *Quelle:* D-25/D-34; ADR-006. *Bezüge:* BR-022, DO-018, PR-010, AC-031, OP-004/OP-012.

### Anbieter und Kuration

**FR-032 · Anbieterregistrierung und -verifikation** — VERBINDLICH
Anbieter registrieren sich und durchlaufen eine Verifikation, bevor sie Events einreichen dürfen. *Akteure:* Anbieter; Kuration. *Quelle:* D-08; ADR-003 (§29). *Bezüge:* BR-001, ST-001, DO-005/DO-006, EXC-014, AC-032.

**FR-033 · Nur geprüfte Anbieter, keine Privaten** — VERBINDLICH
Im MVP nur gewerbliche/institutionelle/gemeinnützige geprüfte Anbieter; private Gastgeber sind ausgeschlossen. *Akteure:* Kuration. *Quelle:* D-08; ADR-003. *Bezüge:* BR-001, DO-005, AC-033.

**FR-034 · Event als Entwurf mit Pflichtfeldern** — VERBINDLICH
Geprüfte Anbieter legen Events als Entwurf mit dem Pflichtfeldsatz (D-31) an. *Akteure:* Anbieter. *Quelle:* D-31; ADR-008. *Bezüge:* BR-005, ST-002, DO-007, EXC-013, AC-034.

**FR-035 · Manuelle Frello-Freigabe** — VERBINDLICH
Jeder Evententwurf wird vollständig manuell geprüft: freigegeben / abgelehnt / zur Überarbeitung zurückgegeben. Fehlende Pflichtangaben verhindern die Veröffentlichung. Keine automatisierte/KI-Freigabe. *Akteure:* Kuration. *Quelle:* D-33; ADR-008. *Bezüge:* BR-004, ST-002, DO-008, EXC-013/EXC-014, AC-035.

**FR-036 · Anbieterverwaltung von Buchungen/Warteliste** — VERBINDLICH
Anbieter verwalten Buchungen, Warteliste und Teilnehmerliste ihrer freigegebenen Events. *Akteure:* Anbieter. *Quelle:* D-19/D-31; ADR-004/ADR-008 (§12/§16). *Bezüge:* BR-007/BR-008, DO-009/DO-011, AC-036.

**FR-037 · Anbieter-Check-in-Funktion** — VERBINDLICH
Anbieter führen den Check-in ihrer Teilnehmenden durch. *Akteure:* Anbieter. *Quelle:* D-19/D-24; ADR-004/ADR-006 (§12/§16). *Bezüge:* BR-020, ST-007, DO-016, AC-027.

### Betrieb, Support, Moderation

**FR-038 · Adminbereich** — VERBINDLICH
Frello betreibt einen Adminbereich für Anbieter-/Eventprüfung, Support, Moderation und Rückerstattungen. *Akteure:* Kuration/Support/Moderation/Administration. *Quelle:* D-33/D-42/D-43; ADR-008/ADR-004 (§12/§31). *Bezüge:* BR-004/BR-018/BR-019, DO-024, AC-037.

**FR-039 · Support-Rückrufservice** — PILOTPARAMETER
Support als Rückrufservice Mo–Fr 09:00–17:00 (Rückruf < 1 Werktag), ausserhalb asynchron, dringende Sicherheit priorisiert; keine dauerhaft besetzte Hotline. *Akteure:* Support. *Quelle:* D-27/D-35; ADR-005. *Bezüge:* BR-026, ST-011, DO-023, AC-038, OP-005.

**FR-040 · Moderations- und Sicherheitseskalation** — VERBINDLICH
Meldungen werden menschlich moderiert; dringende Sicherheitsmeldungen erhalten einen priorisierten Melde-/Eskalationsweg; nachvollziehbare Sanktionen. *Akteure:* Moderation. *Quelle:* D-35; ADR-005 (§29). *Bezüge:* BR-012/BR-024, ST-010, DO-022, PR-012, EXC-011/EXC-012, AC-039.

### Geschäftsmodell-Grenzen und Ergänzungen

**FR-041 · Kostenlose Inserate geprüfter Anbieter** — VERBINDLICH
Kostenlose Veranstaltungen geprüfter Anbieter können kostenlos inseriert werden. *Akteure:* Anbieter; Kuration. *Quelle:* D-12; ADR-003. *Bezüge:* BR-034, AC-040.

**FR-042 · Keine kostenpflichtige Promotion** — VERBINDLICH (Ausschluss)
Im MVP keine bezahlte Hervorhebung/bevorzugte Platzierung; Reihung rein inhaltlich. *Akteure:* Frello. *Quelle:* D-38; ADR-003. *Bezüge:* BR-016, AC-041, OP-027.

**FR-043 · Keine externen Buchungen** — VERBINDLICH (Ausschluss)
Im MVP keine Weiterleitung an externe Buchungssysteme; das Feld «Kennzeichnung externer Buchung» ist inaktiv. *Akteure:* Frello; Anbieter. *Quelle:* D-39; ADR-003. *Bezüge:* BR-015, DO-007, AC-042, OP-026.

**FR-044 · Benachrichtigungen und Erinnerungen** — VERBINDLICH
Frello versendet fachliche Benachrichtigungen/Erinnerungen (u. a. Buchungsbestätigung, Nachrückangebot, Absage/Ausfall). Die technische Kanalwahl (z. B. E-Mail/SMS/Push) ist **nicht** Teil dieser Spezifikation. *Akteure:* System. *Quelle:* D-43; ADR-004 (§16). *Bezüge:* BR-008/BR-019, DO-012, AC-043.

**FR-045 · Zugänglichkeits-/Mobilitätsangaben je Event** — VERBINDLICH
Jedes Event trägt Zugänglichkeitsangaben (Pflichtfeld) und – wo relevant – Aktivitätsniveau/Verpflegung. *Akteure:* Anbieter; alle (Anzeige). *Quelle:* D-31; ADR-008 (§16). *Bezüge:* BR-005, DO-007, AC-044.

**FR-046 · Protokollierung relevanter Vorgänge** — VERBINDLICH
Anbieterprüfung, Eventfreigabe, Buchungsübertragung, Absage/Ausfall, Rückerstattung, Sanktion und Einsprache werden nachvollziehbar protokolliert. *Akteure:* System; Frello. *Quelle:* D-33/D-40/D-43; ADR-008/ADR-004. *Bezüge:* PR-011, DO-024, AC-045.

---

## Nicht-MVP / zurückgestellt (als Ausschluss dokumentiert)

Diese Punkte sind **NICHT TEIL DES MVP** bzw. **ZURÜCKGESTELLT** und werden hier nur zur Klarstellung geführt (siehe [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md)): externe Buchungen und Lead-/B2B-Modell (OP-026), kostenpflichtige Promotion (OP-027), Teilzahlungen (OP-028), offener 1:1-Chat, private Gastgeber, öffentliche Anbieterantwort, Social Feed, native App als Launch-Ziel (OP-031), Deutschland-Expansion (OP-029), automatisierte/KI-Moderation.
