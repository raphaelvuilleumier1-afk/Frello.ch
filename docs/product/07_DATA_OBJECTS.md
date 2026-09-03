# 07 · Fachliche Datenobjekte

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Glossar](./01_GLOSSARY.md)

Beschreibt die **fachlichen** Datenobjekte und Informationen des MVP – **keine** technischen Tabellen, Datenbankfelder oder API-Schemas (D-31/ADR-008 ausdrücklich). Jedes Objekt nennt Zweck, wesentliche fachliche Informationen und Quelle. Zustände stehen in [`06_STATE_MODELS.md`](./06_STATE_MODELS.md), Datenschutz in [`09_PRIVACY_SECURITY_AUDIT.md`](./09_PRIVACY_SECURITY_AUDIT.md).

| ID | Objekt | Zweck / wesentliche fachliche Informationen | Quelle |
|---|---|---|---|
| DO-001 | **Konto** | Zugang einer Person zu Frello; Voraussetzung jeder Buchung. Enthält u. a. Kontostatus, Telefonverifikationsstatus. Keine Gastbuchung. | D-20/D-26 |
| DO-002 | **Profil** | Sicherer Steckbrief: Vorname/Anzeigename, Region, Sprachen, Interessen, Aktivitätsniveau, freiwilliges Foto, freiwilliges Generationsband. Nicht öffentlich: genaues Geburtsdatum, Adresse, Telefonnummer, E-Mail, Zahlungsdaten. | D-21/D-22; §15 |
| DO-003 | **Teilnehmende Person** | Fachliche Identität der Person, die an einem Event teilnimmt; kann mit einem Konto verknüpft sein oder (im Angehörigenmodus) ohne eigenes Konto geführt werden. Trägt Teilnahme-, Check-in- und Bewertungsberechtigung. | D-15/D-20 |
| DO-004 | **Angehörigenbeziehung** | Verknüpfung zwischen buchender Person (Konto) und teilnehmender Person; hält nachvollziehbare Zustimmung und Teilnehmeridentität. Datenschutz EXTERN ZU PRÜFEN (OP-010). | D-15 |
| DO-005 | **Anbieter** | Organisation, die Events veröffentlicht; Anbietertyp (gewerblich/institutionell/gemeinnützig), Kontaktperson, Geschäftsadresse. Keine Privaten im MVP. | D-08 |
| DO-006 | **Anbieterprüfung** | Nachweis der durchgeführten Verifikation (u. a. Register-/Identitäts-/Bankkontoabgleich, Qualifikationsnachweis bei sensiblen Angeboten); Ergebnis verifiziert/abgelehnt. Massnahmen teils EXTERN ZU PRÜFEN. | D-08; §29 |
| DO-007 | **Event** | Veröffentlichbare Veranstaltung mit dem verbindlichen Pflichtfeldsatz (siehe Abschnitt «Event-Pflichtfelder»). | D-31; ADR-008 |
| DO-008 | **Eventfreigabe** | Ergebnis der manuellen Frello-Prüfung eines Evententwurfs: freigegeben / abgelehnt / zur Überarbeitung zurückgegeben, mit Prüfvermerk. Keine automatisierte/KI-Freigabe. | D-33; ADR-008 |
| DO-009 | **Buchung** | Verbindliche Anmeldung einer teilnehmenden Person zu einem Event (intern, keine externe Buchung). Enthält Bezug zu buchender/teilnehmender Person, Zahlungsart, Storno-/Übertragungs-/Check-in-Bezug. | D-20/D-39 |
| DO-010 | **Zahlung** | Fachlicher Zahlungsvorgang zu einer Buchung: Zahlungsart (online / vor Ort), Vollzahlung (keine Teilzahlung). Regulierter Zahlungsfluss/Abrechnung EXTERN ZU PRÜFEN (OP-008). | D-17/D-41 |
| DO-011 | **Wartelisteneintrag** | Position einer wartenden Person bei Erreichen der Höchstzahl; folgt grundsätzlich der Eintragungsreihenfolge. | D-19; §16 |
| DO-012 | **Nachrückangebot** | Zeitlich begrenztes Angebot an eine berechtigte wartende Person (regulär 12 h; bei <24 h 2 h; im <2-h-Sonderfall Broadcast). Enthält Frist und Status. | D-19/D-44 |
| DO-013 | **Buchungsübertragung** | Vorgang der Übertragung einer Buchung an eine andere Person (bis 24 h selbst, darunter über Support); Empfänger mit Konto und abgeschlossener Telefonverifikation; wird protokolliert. Guardrails OFFEN, revDSG EXTERN ZU PRÜFEN. | D-40 |
| DO-014 | **Stornierung** | Storno einer Buchung nach dem gewählten Stornomodell (Flexibel/Standard/Fix). | D-18 |
| DO-015 | **Rückerstattung** | Fachlicher Erstattungsvorgang (z. B. bei Anbieterabsage/Ausfall: volle Rückerstattung als Standard; Stornofälle nach Modell). Rechtlicher/technischer Prozess EXTERN ZU PRÜFEN (OP-008/OP-009). | D-18/D-42/D-43 |
| DO-016 | **Check-in** | Erfassung der tatsächlichen Teilnahme vor Ort; Voraussetzung der Bewertungsberechtigung. | D-19/D-24 |
| DO-017 | **Bewertung** | Strukturierte Bewertung mit fünf öffentlichen Kategorien und interner Zugänglichkeitsangabe; erzeugt (aggregiert) die öffentliche Gesamtnote ab fünf Bewertungen. | D-24/D-34 |
| DO-018 | **Internes Freitextfeedback** | Freitextrückmeldung; bleibt intern, Anbieter erhalten anonymisierte Einsicht; keine öffentliche Anbieterantwort im MVP. Persönlichkeitsrecht EXTERN ZU PRÜFEN (OP-012). | D-25/D-34 |
| DO-019 | **Gruppenchat** | Ereignisbezogener, moderierter Chatraum einer bestätigten Eventgruppe; schliesst nach dem Event (Detailzeitpunkt OFFEN). Keine 1:1-Kanäle. | D-23 |
| DO-020 | **Nachricht** | Einzelbeitrag im Gruppenchat; Telefonnummern bleiben verborgen; meldbar. | D-23 |
| DO-021 | **Meldung** | Melde-Eintrag (Melden/Blockieren) zu Nachricht, Person oder Vorfall; Grundlage für Moderation/Eskalation. | D-23; §29 |
| DO-022 | **Moderationsfall** | Vorgang der Trust-&-Safety-Bearbeitung inkl. Sanktion/Einsprache; dringende Sicherheitsfälle priorisiert. | D-35; §29 |
| DO-023 | **Supportfall** | Rückruf-/Supportanliegen in den Pilot-Supportzeiten (Mo–Fr 09–17), inkl. Übertragung <24 h. | D-27/D-35/D-40 |
| DO-024 | **Auditprotokoll** | Nachvollziehbare Protokollierung relevanter Vorgänge (Anbieterprüfung, Eventfreigabe, Buchungsübertragung, Ausfall/Absage, Rückerstattung, Sanktion, Einsprache). | D-33/D-40/D-43 |

## Event-Pflichtfelder (D-31, exakt fachlich übernommen)

Es werden ausschliesslich **fachliche** Pflichtangaben festgelegt; keine technischen Feldtypen oder Schemas.

### Immer erforderlich

Titel · verständliche Kurzbeschreibung · Kategorie · Datum · Beginn · Ende · Veranstaltungsort · vollständige Adresse · Stadt bzw. Region · Preis · Zahlungsart · Mindestteilnehmerzahl · Höchstteilnehmerzahl · Buchungsschluss · gewähltes Stornomodell · Zeitpunkt des Durchführungsentscheids · Sprache · verantwortlicher geprüfter Anbieter · Kontaktmöglichkeit · Zugänglichkeitsangaben · Kennzeichnung «Alleine willkommen».

### Bedingt erforderlich (wenn für das Angebot relevant)

körperliches Aktivitätsniveau · erforderliche Ausrüstung · Verpflegung · transparenter Altersfokus · Kennzeichnung externer Buchung · Qualifikationsnachweis bei Gesundheits-, Bewegungs- oder vergleichbar sensiblen Angeboten.

> **Kennzeichnung externer Buchung** ist im MVP **NICHT ANWENDBAR / inaktiv**, da externe Buchungen im MVP ausgeschlossen sind (D-39). Reaktivierung erst bei späterer Einführung externer Buchungen.

### Freiwillig im MVP

ÖV-Informationen · Parkmöglichkeiten · Veranstaltungsbild.

**Regel:** Fehlende oder unklare **erforderliche** (bzw. einschlägige bedingt erforderliche) Angaben verhindern die Veröffentlichung (D-31/D-33; siehe [`05_BUSINESS_RULES.md`](./05_BUSINESS_RULES.md) BR-005/BR-004).

## Bewertung – strukturierte Kategorien (D-34)

- **Öffentlich (gehen in die Gesamtnote ein, gleiches Gewicht):** (1) Gesamterlebnis, (2) Organisation, (3) Beschreibungstreue, (4) Freundlichkeit/Betreuung, (5) Preis-Leistungs-Verhältnis.
- **Intern (fliesst nicht in die öffentliche Gesamtnote):** Zugänglichkeit.
- Öffentliche Gesamtnote = gleichgewichteter arithmetischer Durchschnitt der fünf öffentlichen Kategorien, gerundet auf **eine Dezimalstelle**, sichtbar **erst ab fünf** bestätigten Bewertungen, mit sichtbarer Bewertungsanzahl.

## Sichtbare Platzhalter

- **[EXTERN ZU PRÜFEN – D-17, OP-008]** Fachliche/technische Ausgestaltung von Zahlung/Rückerstattung/Abrechnung (DO-010/DO-015).
- **[OFFEN – D-40, OP-003]** Guardrails/Häufigkeitsgrenzen der Buchungsübertragung (DO-013).
- **[OFFEN – D-23]** Genauer Schliesszeitpunkt des Gruppenchats nach dem Event (DO-019).
- **[OFFEN – §15]** Umfang/Zugänglichkeit des Notfallkontakts (Bezug DO-002/DO-003).
