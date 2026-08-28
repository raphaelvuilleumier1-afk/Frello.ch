# Offene Gründerentscheidungen – Frello

**Stand:** 28. August 2026 · **Version:** 0.1 · Zugehörig: [Businessplan](./01_BUSINESS_PLAN_V0.1.md) · [Annahmenregister](./03_ASSUMPTION_REGISTER.md) · [Quellenregister](./04_SOURCE_REGISTER.md) · [README](./README.md)

Dieses Register listet alle **materiellen Entscheidungen**, die durch den Gründer getroffen werden müssen und **nicht** durch Claude getroffen werden dürfen. Keine Entscheidung ist automatisch als akzeptiert markiert. Status jeder Entscheidung: **OFFEN**, bis der Gründer sie mit Datum und Nachweis/ADR-Link einträgt.

**Prioritätslogik:** **P1** = blockiert Namens-/Rechts-/Pilotfundament oder viele Folgeentscheidungen; **P2** = für MVP-/Pilotdesign nötig; **P3** = später, aber vorzumerken.

**Legende Feldstruktur** (pro Eintrag): ID · Titel · Fragestellung · Kontext · Status · Varianten · Empfehlung · Begründung · Vorteile · Nachteile · Produktrisiko · Businessauswirkung · technische Auswirkung · rechtliche Auswirkung · operative Auswirkung · Abhängigkeiten · spätester Entscheidungszeitpunkt · Gründerentscheid · Entscheidungsdatum · Nachweis/ADR.

---

## Übersicht (priorisiert)

| ID | Titel | Priorität | Status | Spätester Zeitpunkt |
|---|---|---|---|---|
| D-01 | Registrierung `frello.ch` | P1 | OFFEN | vor öffentlicher Nutzung des Namens |
| D-02 | Markenrecherche Schweiz | P1 | OFFEN | vor Marken-/Logoinvestition |
| D-03 | Prüfung Deutschland/EU (Name) | P1 | OFFEN | vor Expansionsplanung |
| D-04 | Handelsregisterprüfung Name | P1 | OFFEN | vor Firmengründung |
| D-05 | App-Store-Namensprüfung | P2 | OFFEN | vor App-Planung |
| D-06 | Social-Handle-Prüfung | P2 | OFFEN | vor Marketingstart |
| D-07 | Alterspositionierung | P1 | OFFEN | vor Pilotdesign |
| D-08 | Private Veranstalter zulassen? | P2 | OFFEN | vor MVP-Anbietermodell |
| D-09 | Pilotregion | P1 | OFFEN | vor Pilot |
| D-10 | Sprachregion & Termine | P1 | OFFEN | vor Pilot |
| D-11 | Provisionsmodell/-satz | P1 | OFFEN | vor Anbietervertragsdesign |
| D-12 | Kostenlose Inserate | P2 | OFFEN | vor MVP-Anbietermodell |
| D-13 | Externe Buchungen | P2 | OFFEN | vor MVP-Anbietermodell |
| D-14 | Betreiberfirma & Team | P1 | OFFEN | vor Vertrags-/Zahlungsaufbau |
| D-15 | Angehörigenmodus | P2 | OFFEN | vor Profil-/Buchungsdesign |
| D-16 | Plattform- vs. Veranstalterrolle | P1 | OFFEN | vor AGB/Zahlungsdesign |
| D-17 | Zahlung online vs. vor Ort | P2 | OFFEN | vor Buchungsdesign |
| D-18 | Stornoregeln | P2 | OFFEN | vor Buchungsdesign |
| D-19 | Mindestteilnehmer-/Wartelistenfristen | P2 | OFFEN | vor Buchungsdesign |
| D-20 | Buchung ohne Konto / Gastbuchung | P2 | OFFEN | vor Buchungsdesign |
| D-21 | Öffentliche Teilnehmerlisten & Profilfoto | P2 | OFFEN | vor Profildesign |
| D-22 | Altersband-Anzeige | P3 | OFFEN | vor Profildesign |
| D-23 | Event-Gruppenchat vs. 1:1-Chat | P2 | OFFEN | vor Kommunikationsdesign |
| D-24 | Bewertungsmindestzahl | P3 | OFFEN | vor Bewertungsfreigabe |
| D-25 | Freitextveröffentlichung & Anbieterantworten | P3 | OFFEN | vor Bewertungsfreigabe |
| D-26 | Telefonnummerverifikation | P2 | OFFEN | vor MVP-Vertrauensdesign |
| D-27 | Telefon-Support-Umfang | P2 | OFFEN | vor Pilot |
| D-28 | Web zuerst vs. native App | P2 | OFFEN | vor technischer Spezifikation |
| D-29 | Pilotumfang | P2 | OFFEN | vor Pilot |
| D-30 | Expansionskriterien Deutschland | P3 | OFFEN | vor Expansionsentscheid |

---

## P1 – Fundamentale Entscheidungen

### D-01 · Registrierung `frello.ch`
- **Fragestellung:** Soll/darf `frello.ch` registriert werden, und ist der Name frei?
- **Kontext:** Domain ist **nicht** registriert/gesichert; Registrierung ist **nicht** Teil des aktuellen Auftrags.
- **Status:** OFFEN. **Varianten:** registrieren / alternativen Namen prüfen / zurückstellen.
- **Empfehlung:** Verfügbarkeit prüfen und – nach D-02 – frühzeitig registrieren. **Begründung:** Namensrisiko früh senken.
- **Vorteile:** Sicherung des Arbeitsnamens. **Nachteile:** Kosten/Bindung vor Marktvalidierung.
- **Produktrisiko:** gering · **Business:** Markenkontinuität · **Technisch:** gering · **Rechtlich:** Markenkollision (mit D-02) · **Operativ:** gering.
- **Abhängigkeiten:** D-02, D-04. **Spätester Zeitpunkt:** vor öffentlicher Nutzung. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-02 · Markenrecherche Schweiz
- **Fragestellung:** Ist «Frello» in relevanten Klassen in der Schweiz markenrechtlich verfügbar/konfliktfrei?
- **Kontext:** Recherche **nicht** abgeschlossen. **Status:** OFFEN. **[EXTERN ZU PRÜFEN]**
- **Varianten:** Recherche durch Fachperson / Eigenrecherche / später. **Empfehlung:** Fachperson beauftragen vor Marken-/Logoinvestition.
- **Vorteile:** Rechtssicherheit. **Nachteile:** Kosten/Zeit.
- **Produktrisiko:** gering · **Business:** hoch (Rebrand-Risiko) · **Rechtlich:** hoch · **Operativ:** gering.
- **Abhängigkeiten:** D-01, D-04. **Spätester Zeitpunkt:** vor Markeninvestition. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-03 · Prüfung Deutschland/EU (Name)
- **Fragestellung:** Ist der Name in Deutschland/EU verfügbar?
- **Kontext:** **nicht** geprüft. **Status:** OFFEN. **[EXTERN ZU PRÜFEN]**
- **Empfehlung:** Vor Expansionsplanung prüfen. **Business:** hoch bei Expansion · **Rechtlich:** hoch.
- **Abhängigkeiten:** D-30. **Spätester Zeitpunkt:** vor Expansion. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-04 · Handelsregisterprüfung Name
- **Fragestellung:** Bestehen Handelsregisterkonflikte für Firmen-/Produktname?
- **Kontext:** **nicht** geprüft. **Status:** OFFEN. **[EXTERN ZU PRÜFEN]**
- **Empfehlung:** vor Firmengründung prüfen. **Rechtlich:** hoch. **Abhängigkeiten:** D-14. **Spätester Zeitpunkt:** vor Gründung. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-07 · Alterspositionierung
- **Fragestellung:** Kernsegment «aktive 65–79» oder breiter «60+/alle Erwachsenen», und wie wird der Altersfokus je Event gehandhabt?
- **Kontext:** Plattform grundsätzlich für alle Erwachsenen; primärer Fokus Ältere. Konkrete Positionierung offen.
- **Status:** OFFEN. **Varianten:** enger 65–79 / breit 60+ / offen mit veranstaltungsabhängigem Fokus.
- **Empfehlung:** «Primär 65+, offen für alle» als Marken-Hypothese; finale Positionierung per Interviews/Pilot. **Begründung:** vermeidet Stigmatisierung, hält Reichweite.
- **Produktrisiko:** mittel · **Business:** hoch (steuert Zielgruppen/GTM) · **Rechtlich:** Diskriminierungsaspekte bei Alters-/Geschlechterfiltern **[EXTERN ZU PRÜFEN]**.
- **Abhängigkeiten:** D-09, D-22. **Spätester Zeitpunkt:** vor Pilotdesign. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-09 · Pilotregion
- **Fragestellung:** Welche kompakte Region startet den Pilot?
- **Kontext:** Zürich als Prüf-Option genannt, **nicht** beschlossen. **Status:** OFFEN.
- **Empfehlung:** kompakte, dichte Region wählen; nicht ganze Schweiz. **Business:** hoch · **Operativ:** hoch.
- **Abhängigkeiten:** D-10, D-29. **Spätester Zeitpunkt:** vor Pilot. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-10 · Sprachregion & Termine
- **Fragestellung:** Startsprachregion (D/F/I) und Termine (Start/Launch/Expansion)?
- **Kontext:** mehrsprachiger Start und alle Termine offen. **Status:** OFFEN.
- **Empfehlung:** eine Sprachregion zuerst; Termine an Kennzahlen, nicht Kalender, binden.
- **Abhängigkeiten:** D-09. **Spätester Zeitpunkt:** vor Pilot. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-11 · Provisionsmodell/-satz
- **Fragestellung:** Welche Provisions-/Gebührenstruktur je Anbietermodell?
- **Kontext:** Korridore ~6–10 % (Standard), ~12–20 % (Managed) sind **[HYPOTHESE]**; kein definitiver Satz.
- **Status:** OFFEN. **Varianten:** einheitliche Provision / gestuftes Modell / Fixgebühr / Kombination.
- **Empfehlung:** gestuftes Modell, exakte Sätze per Anbieterinterviews (6/8/10 %) validieren.
- **Business:** sehr hoch · **Rechtlich:** Abrechnung/MWST **[EXTERN ZU PRÜFEN]** · **Operativ:** Auszahlung.
- **Abhängigkeiten:** D-12, D-13, D-16, D-17. **Spätester Zeitpunkt:** vor Anbietervertragsdesign. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-14 · Betreiberfirma & Team
- **Fragestellung:** Welche juristische Person betreibt Frello; Eigentümer-/Teamstruktur?
- **Kontext:** **[OFFEN]**. `Kreativ Solutions GmbH` erscheint nur als Adressat der Research, **nicht** als verbindlicher Betreiberentscheid und wird nicht automatisch festgelegt.
- **Status:** OFFEN. **Varianten:** bestehende GmbH / Neugründung / andere Rechtsform.
- **Rechtlich:** hoch (Vertragspartner, Haftung, Zahlungsfluss) **[EXTERN ZU PRÜFEN]** · **Business:** hoch.
- **Abhängigkeiten:** D-04, D-16, D-17. **Spätester Zeitpunkt:** vor Vertrags-/Zahlungsaufbau. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

### D-16 · Plattform- vs. Veranstalterrolle
- **Fragestellung:** Ist Frello reiner Vermittler oder (teils) Veranstalter (v. a. bei Managed Events/Reisen)?
- **Kontext:** bestimmt Haftung, AGB, Zahlungsfluss, Reiseveranstalterpflichten.
- **Status:** OFFEN. **[EXTERN ZU PRÜFEN]** **Empfehlung:** Rolle pro Angebotstyp eindeutig festlegen; juristisch bestätigen.
- **Rechtlich:** sehr hoch · **Business:** hoch · **Operativ:** hoch.
- **Abhängigkeiten:** D-11, D-14, D-17, D-18. **Spätester Zeitpunkt:** vor AGB/Zahlungsdesign. **Gründerentscheid:** — **Datum:** — **Nachweis/ADR:** —

---

## P2 – MVP-/Pilotdesign

### D-05 · App-Store-Namensprüfung
- **Frage:** Ist «Frello» in App Stores verfügbar? **Status:** OFFEN. **[EXTERN ZU PRÜFEN]** **Abhängigkeit:** D-28. **Spätester Zeitpunkt:** vor App-Planung.

### D-06 · Social-Handle-Prüfung
- **Frage:** Sind relevante Social-Media-Handles frei? **Status:** OFFEN. **Spätester Zeitpunkt:** vor Marketingstart.

### D-08 · Private Veranstalter zulassen?
- **Frage:** Dürfen Privatpersonen eigene Veranstaltungen anbieten? **Kontext:** offen; erst später und mit strengeren Regeln denkbar. **Status:** OFFEN. **Empfehlung:** im MVP nur professionelle/institutionelle Anbieter; Private später prüfen. **Rechtlich/Trust:** hoch. **Spätester Zeitpunkt:** vor MVP-Anbietermodell.

### D-12 · Kostenlose Inserate
- **Frage:** Für welche Anbieter (Gemeinden, Vereine, Kirchen, gemeinnützig) gilt kostenlose Veröffentlichung, mit welchen Funktionsgrenzen? **Status:** OFFEN. **Empfehlung:** kostenlose Inserate zur Sicherung der Angebotsdichte. **Abhängigkeit:** D-11.

### D-13 · Externe Buchungen
- **Frage:** Wie werden Anbieter mit eigenem Ticketsystem eingebunden/monetarisiert (keine/ Lead-Gebühr/ B2B-Paket)? **Status:** OFFEN. **Abhängigkeit:** D-11.

### D-15 · Angehörigenmodus
- **Frage:** Darf mit Zustimmung für eine andere Person gebucht werden; wie datenschutzkonform ausgestalten? **Status:** OFFEN. **[EXTERN ZU PRÜFEN]** **Empfehlung:** Angehörigenbuchung mit klar getrennter Teilnehmeridentität. **Rechtlich:** hoch.

### D-17 · Zahlung online vs. vor Ort
- **Frage:** Online-Zahlung, Zahlung vor Ort oder beides; und vor/nach Erreichen der Mindestzahl? **Status:** OFFEN. **[EXTERN ZU PRÜFEN]** (Payment/Kundengelder). **Abhängigkeit:** D-11, D-16.

### D-18 · Stornoregeln
- **Frage:** Storno-, No-show-, Absage- und Rückerstattungsregeln, Fristen, Gebühren, Kulanz? **Status:** OFFEN. **[EXTERN ZU PRÜFEN]** (Konsumentenschutz). **Abhängigkeit:** D-16.

### D-19 · Mindestteilnehmer-/Wartelistenfristen
- **Frage:** Fristen für Mindestzahl-Entscheid, Reservierungsdauer beim Nachrücken, Buchungsschluss? **Status:** OFFEN. **Abhängigkeit:** D-18.

### D-20 · Buchung ohne Konto / Gastbuchung
- **Frage:** Ist Buchung ohne Konto oder als Gast möglich? **Status:** OFFEN. **Empfehlung:** aus Zugänglichkeitsgründen prüfen; gegen Vertrauens-/Verifikationsanforderungen abwägen.

### D-21 · Öffentliche Teilnehmerlisten & Profilfoto
- **Frage:** Sichtbarkeit anderer Teilnehmender; öffentliches (geprüftes) Profilfoto ja/nein? **Status:** OFFEN. **Empfehlung:** im MVP keine frei sichtbaren Teilnehmerlisten für Nichtangemeldete; Foto freiwillig/moderiert. **Rechtlich:** Datenschutz **[EXTERN ZU PRÜFEN]**.

### D-23 · Event-Gruppenchat vs. 1:1-Chat
- **Frage:** Umfang der Kommunikationsfunktionen im MVP? **Status:** OFFEN. **Empfehlung:** eventbezogener Gruppenchat im MVP; offener 1:1-Chat später und gestuft. **Trust:** hoch.

### D-26 · Telefonnummerverifikation
- **Frage:** Wird die Telefonnummer als internes Vertrauensmerkmal verifiziert? **Status:** OFFEN. **Empfehlung:** ja, als Vertrauensbaustein (nicht öffentlich). **Rechtlich:** Datenschutz **[EXTERN ZU PRÜFEN]**.

### D-27 · Telefon-Support-Umfang
- **Frage:** Welcher Umfang an Telefon-/Rückrufhilfe im Pilot/MVP? **Status:** OFFEN. **Operativ:** hoch (Supportkosten).

### D-28 · Web zuerst vs. native App
- **Frage:** Reihenfolge Web/PWA vs. native Apps? **Status:** OFFEN. **Empfehlung:** Web zuerst; native Apps nach nachgewiesener wiederkehrender Nutzung. **Abhängigkeit:** D-05.

### D-29 · Pilotumfang
- **Frage:** Konkreter Umfang (Anbieterzahl, Termine, Dauer, Formate)? **Status:** OFFEN. **Empfehlung:** Hypothese 5–10 Anbieter, 20–30 Termine, ~12 Wochen validieren. **Abhängigkeit:** D-09.

---

## P3 – Später, aber vorgemerkt

### D-22 · Altersband-Anzeige
- **Frage:** Welches Altersband wird öffentlich angezeigt (statt exaktem Geburtsdatum)? **Status:** OFFEN. **Rechtlich:** Datenschutz **[EXTERN ZU PRÜFEN]**.

### D-24 · Bewertungsmindestzahl
- **Frage:** Ab wie vielen bestätigten Bewertungen wird öffentlich angezeigt? **Kontext:** Idee «ab fünf» ist **[HYPOTHESE]**. **Status:** OFFEN.

### D-25 · Freitextveröffentlichung & Anbieterantworten
- **Frage:** Werden Freitextbewertungen veröffentlicht; dürfen Anbieter antworten; Einspracheprozess? **Status:** OFFEN. **[EXTERN ZU PRÜFEN]** (Persönlichkeitsrecht/Moderation).

### D-30 · Expansionskriterien Deutschland
- **Frage:** Welche belegten Kriterien lösen die Deutschland-Prüfung aus? **Kontext:** Voraussetzungen als Hypothese im Businessplan (Kapitel 35). **Status:** OFFEN. **Abhängigkeit:** D-03.

---

## Dokumentierte Konflikte gleichrangiger Quellen

Zum Stand 0.1 wurden **keine** Konflikte zwischen gleichrangigen verbindlichen Quellen festgestellt (das Repository enthält ausser der Research keine weiteren verbindlichen Business-/ADR-Dokumente). Der einzige Klärungspunkt – die Erwähnung von `Kreativ Solutions GmbH` in der Research – ist als D-14 erfasst und wird neutral behandelt (keine automatische Festlegung als Betreiberin).
