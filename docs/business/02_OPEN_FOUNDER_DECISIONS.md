# Gründerentscheide und offene Punkte – Frello

**Stand:** 31. August 2026 · **Version:** 0.3 (zweite Tranche 31.08.2026: D-31–D-46) · Zugehörig: [Businessplan](./01_BUSINESS_PLAN_V0.3.md) · [Annahmenregister](./03_ASSUMPTION_REGISTER.md) · [Quellenregister](./04_SOURCE_REGISTER.md) · [README](./README.md) · [ADR-Verzeichnis](./decisions/README.md)

Dieses Register führt alle materiellen Entscheidungen (`D-01`…`D-46`). Am **28. August 2026** wurde ein erster konsolidierter Gründerentscheid eingearbeitet (D-01…D-30). Am **31. August 2026** wurden in einer strukturierten Klärung weitere Gründerentscheide **D-31…D-46** ausdrücklich bestätigt; drei davon ändern frühere Entscheide (D-37 ändert D-29, D-39 nimmt D-13 aus dem MVP-Scope, D-46 ändert D-28 – Nachweis und Historie unten). Jede D-ID verweist auf die zuständige [ADR](./decisions/README.md). Historische Fragestellungen bleiben erhalten, soweit sie der Nachvollziehbarkeit dienen.

## Decision-Status (Statusmodell)

| Status | Bedeutung |
|---|---|
| **AKZEPTIERT** | Gründerentscheid vollständig getroffen. |
| **AKZEPTIERT MIT VALIDIERUNG** | Grundrichtung beschlossen; Kennzahl/Satz im Pilot zu validieren. |
| **TEILWEISE AKZEPTIERT** | Hauptentscheid getroffen; benannte Unterpunkte bleiben offen. |
| **ZURÜCKGESTELLT** | Bewusst an späteren Trigger gebunden. |
| **NICHT ANWENDBAR FÜR DEN MVP** | Fragestellung ist für den MVP nicht einschlägig; wird nur bei künftigem Bedarf reaktiviert. |
| **AUSSTEHENDE UMSETZUNG** | Entscheid getroffen; externe Handlung noch nicht nachgewiesen. |
| **EXTERN ZU PRÜFEN** | Fachliche Bestätigung ausstehend. |
| **OFFEN** | Keine Gründerfreigabe. |

**Entscheidungsdatum der ersten Tranche (D-01…D-30):** 28. August 2026. **Entscheidungsdatum der zweiten Tranche (D-31…D-46):** 31. August 2026. **Nachweis:** konsolidierte Gründerfreigabe im Arbeitsauftrag «Frello – konsolidierte Gründerentscheide und Übergabeprompt» (28.08.2026) sowie die strukturierte interaktive Gründerklärung «fachliche Gründerentscheidungen vor Produktspezifikation V0.1» (31.08.2026) und die abgeleiteten [ADRs](./decisions/README.md).

---

## Übersicht nach Status

### AKZEPTIERT / AKZEPTIERT MIT VALIDIERUNG

| ID | Titel | Status | ADR |
|---|---|---|---|
| D-01 | Registrierung `frello.ch` | AKZEPTIERT · Umsetzung ausstehend | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-02 | Zweistufige Markenprüfung Schweiz | AKZEPTIERT · Durchführung ausstehend · Stufe 2 EXTERN ZU PRÜFEN | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-06 | Social Handles defensiv sichern | AKZEPTIERT · Umsetzung ausstehend | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-07 | Alterspositionierung 65+, offen für alle | AKZEPTIERT | [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md) |
| D-08 | Nur geprüfte gewerbl./instit./gemeinnützige Anbieter | AKZEPTIERT | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-09/D-10 | Pilotgebiet Deutschschweiz, Sprache Deutsch | AKZEPTIERT | [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md) |
| D-11 | Provision 8 % / 15 % (Pilotgrundlage) | AKZEPTIERT MIT VALIDIERUNG | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-12 | Kostenlose Inserate geprüfter Anbieter | AKZEPTIERT (Promotion via D-38 im MVP ausgeschlossen) | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-14 | Betreiberin Kreativ Solutions GmbH | AKZEPTIERT MIT VORBEHALT · EXTERN ZU PRÜFEN | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-15 | Angehörigenbuchung erlaubt | AKZEPTIERT · Datenschutz EXTERN ZU PRÜFEN | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-16 | Frello ist Vermittler | AKZEPTIERT · EXTERN ZU PRÜFEN | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-18 | Drei Stornomodelle | AKZEPTIERT · Detail EXTERN ZU PRÜFEN | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-19 | Durchführungs-/Nachrückfristen | AKZEPTIERT | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-20 | Keine Gastbuchung, Kontopflicht | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-21 | Profil-Sichtbarkeit in der Eventgruppe | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-22 | Breite Generationsanzeige (60+/70+/80+) | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-23 | Nur moderierter Event-Gruppenchat | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-24 | Öffentliche Bewertung ab fünf | AKZEPTIERT (verfeinert durch D-34) | [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md) |
| D-25 | Freitext nur intern, öffentlich aggregiert | AKZEPTIERT (verfeinert durch D-34) | [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md) |
| D-26 | Telefonnummerverifikation vor erster Buchung | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-28 | Web/PWA zuerst; **native App als Fast-Follow (geändert durch D-46)** | AKZEPTIERT · **geändert 31.08.2026** | [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md) |
| D-30 | Deutschland-Expansionsvoraussetzungen | AKZEPTIERT (Kriterien beschlossen; operative Expansion wartet auf Kriterienerfüllung) | [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md) |

### TEILWEISE AKZEPTIERT

| ID | Titel | Offener Unterpunkt | ADR |
|---|---|---|---|
| D-13 | Externe Buchungen (nur geprüfte Partner) | **Im MVP ausgeschlossen (D-39); Lead-/B2B-Modell erst nach Pilot** | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-17 | Online- und Vor-Ort-Zahlung | Provisionsabrechnung Vor-Ort, Zahlungsfluss | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-27 | Rückrufservice statt Hotline | **Supportzeiten für den Pilot durch D-35 geschlossen; dauerhafte Zeiten offen** | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-29 | Paralleler Pilot ZH/BS/BE/LU, Dichte 5/10 | **Startlogik durch D-37 geändert (gemeinsamer Start); Pilotdauer durch D-36 auf 16 Wochen gesetzt** | [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md) |

### ZURÜCKGESTELLT / NICHT ANWENDBAR FÜR DEN MVP (an Trigger bzw. künftigen Bedarf gebunden)

| ID | Titel | Trigger / Reaktivierung | ADR |
|---|---|---|---|
| D-03 | Deutschland-/EU-Namensprüfung | vor konkreter Deutschland-Expansion | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-05 | App-Store-Namensprüfung | **jetzt organisatorisch anstehend (durch D-46 ausgelöst); noch ohne Ergebnis** | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-04 | Separate Frello-Gesellschaft | **NICHT ANWENDBAR FÜR DEN MVP**; nur reaktivieren, falls später eine eigene juristische Person mit «Frello» im Firmennamen geplant wird | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |

### Neue Entscheide der zweiten Tranche (31.08.2026): D-31–D-46

| ID | Titel | Status | ADR |
|---|---|---|---|
| D-31 | Pflichtfelder für Veranstaltungen | AKZEPTIERT | [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md) |
| D-32 | Pflichtfilter im MVP | AKZEPTIERT FÜR DEN MVP (weitere Filter zurückgestellt) | [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md) |
| D-33 | Manuelle Frello-Freigabe jedes Events | AKZEPTIERT | [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md) |
| D-34 | Strukturierte Bewertungen (Kategorien, Formel, Anbieterrechte) | AKZEPTIERT · Detail OFFEN · EXTERN ZU PRÜFEN | [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md) |
| D-35 | Supportzeiten im Pilot | AKZEPTIERT ALS PILOTPARAMETER | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-36 | Pilotdauer 16 Wochen | AKZEPTIERT ALS PILOTPARAMETER · zu validieren | [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md) |
| D-37 | Gemeinsamer Pilotstart aller vier Städte | AKZEPTIERT · **ändert D-29** | [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md) |
| D-38 | Keine kostenpflichtige Promotion im MVP | AKZEPTIERT FÜR DEN MVP (spätere Entscheidung offen) | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-39 | Keine externen Buchungen im MVP | AKZEPTIERT FÜR DEN MVP · **nimmt D-13 aus MVP-Scope** · SPÄTER ZURÜCKGESTELLT | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-40 | Buchungsübertragung | AKZEPTIERT IM GRUNDSATZ · Details OFFEN · EXTERN ZU PRÜFEN | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-41 | Keine Teilzahlungen im MVP | AKZEPTIERT FÜR DEN MVP (später zurückgestellt) | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-42 | Absage durch Anbieter | AKZEPTIERT IM FACHLICHEN GRUNDSATZ · EXTERN ZU PRÜFEN | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-43 | Ausfall einer zentralen Leistung | AKZEPTIERT IM FACHLICHEN GRUNDSATZ · EXTERN ZU PRÜFEN | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-44 | Wartelisten-Sonderfall unter zwei Stunden | AKZEPTIERT (genereller Broadcast offen) | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-45 | Entscheidung über Native-App-Auslösung | AKZEPTIERT (keine festen Schwellen) | [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md) |
| D-46 | Web/PWA-Launch und native App als Fast-Follow | AKZEPTIERT · **ändert D-28 und ADR-007** | [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md) |

> **Historische offene Punkte, die entfallen sind:** Die frühere Version 0.1 führte D-07, D-09, D-10, D-16, D-24, D-26, D-28 u. a. als **OFFEN**. Diese sind seit 28.08.2026 entschieden. Keine Entscheidung wurde stillschweigend getroffen; jede beruht auf einer datierten Gründerfreigabe.

---

## Detailliste (mit Gründerentscheid, Datum, ADR)

### Marke, Schutz und Expansion

#### D-01 · Registrierung `frello.ch`
- **Fragestellung (historisch):** Soll `frello.ch` registriert werden und ist der Name frei?
- **Gründerentscheid:** `frello.ch` soll jetzt registriert werden. **Status:** AKZEPTIERT · **AUSSTEHENDE UMSETZUNG** (kein Registrar-Nachweis).
- **Offen:** Registrar-Nachweis. **Datum:** 28.08.2026 · **ADR:** [ADR-001](./decisions/ADR-001-marke-domain-schutz.md).

#### D-02 · Zweistufige Markenprüfung Schweiz
- **Gründerentscheid:** Stufe 1 jetzt (Swissreg/Zefix/Domain-Basisrecherche); Stufe 2 (professionelle Ähnlichkeitsrecherche) vor Logo-Investition/öffentlichem Markenaufbau/Anmeldung. **Status:** AKZEPTIERT · Durchführung ausstehend · Stufe 2 **EXTERN ZU PRÜFEN**.
- **Datum:** 28.08.2026 · **ADR:** [ADR-001](./decisions/ADR-001-marke-domain-schutz.md).

#### D-03 · Deutschland-/EU-Namensprüfung
- **Gründerentscheid:** Nicht im Schweizer Pilot; spätestens vor konkreter Deutschland-Expansion. **Status:** ZURÜCKGESTELLT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-001](./decisions/ADR-001-marke-domain-schutz.md).

#### D-05 · App-Store-Namensprüfung
- **Gründerentscheid (28.08.2026):** Erst bei Erreichen der Native-App-Schwellen (D-28). **Status damals:** ZURÜCKGESTELLT.
- **Aktualisierung (31.08.2026, ausgelöst durch D-46):** Da eine native App nun **früh/parallel als Fast-Follow** vorbereitet wird (D-46) und feste Schwellen entfallen (D-45), ist die App-Store-Namensprüfung **nicht mehr unbestimmt zurückgestellt, sondern organisatorisch jetzt anstehend**. **Status:** AUSSTEHENDE UMSETZUNG (organisatorisch) · **noch ohne Ergebnis**. Es wird **keine** App-Store-Verfügbarkeit behauptet.
- **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Statusaktualisierung) · **ADR:** [ADR-001](./decisions/ADR-001-marke-domain-schutz.md).

#### D-06 · Social Handles
- **Gründerentscheid:** Nach unauffälliger Basisrecherche defensiv sichern. **Status:** AKZEPTIERT · Umsetzung ausstehend.
- **Datum:** 28.08.2026 · **ADR:** [ADR-001](./decisions/ADR-001-marke-domain-schutz.md).

#### D-30 · Deutschland-Expansionsvoraussetzungen
- **Gründerentscheid:** Die **Expansionsvoraussetzungen sind beschlossen** – Deutschland wird konkret erst geprüft, wenn alle vier Pilotstädte Angebotsdichte, reale Wiederbuchung, tragfähigen Betrieb und kontrollierte Sicherheitsprozesse belegen. **Status:** **AKZEPTIERT** (Kriterien beschlossen); **nur die operative Deutschland-Expansion bleibt zurückgestellt**, bis diese Schweizer Kriterien erfüllt sind.
- **Datum:** 28.08.2026 · **ADR:** [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md).

### Zielgruppe und Pilot

#### D-07 · Alterspositionierung
- **Gründerentscheid:** Primär 65+, offen für alle Erwachsenen; eventbezogene Altersfokusse transparent möglich. **Status:** AKZEPTIERT.
- **Offen/extern:** diskriminierungsrechtliche Zulässigkeit der Altersfokusse **[EXTERN ZU PRÜFEN]**. **Datum:** 28.08.2026 · **ADR:** [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md).

#### D-09/D-10 · Pilotgebiet und Sprache
- **Gründerentscheid:** Deutschschweiz; Produktsprache Deutsch. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md).

#### D-29 · Pilotstädte und Dichte
- **Gründerentscheid (28.08.2026):** Paralleler Pilot in Zürich, Basel, Bern, Luzern; öffentlicher Start je Stadt erst ab **≥5 geprüften Anbietern und ≥10 kommenden Terminen**. **Status:** TEILWEISE AKZEPTIERT.
- **Änderung/Ergänzung (31.08.2026):** Die **stadtweise Startlogik ist durch D-37 geändert** (gemeinsamer Start aller vier Städte). Die **Pilotdauer** ist durch **D-36** auf **16 Wochen** gesetzt (zu validieren). Die Dichteschwelle 5/10 je Stadt bleibt unverändert Voraussetzung.
- **Offen:** Realisierung der Dichte je Stadt (A-04/A-05), operative Leistbarkeit (A-26). **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Änderung durch D-36/D-37) · **ADR:** [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md).

### Anbieter, Rolle und Monetarisierung

#### D-14 · Betreiberin
- **Gründerentscheid:** Geplante Betreiberin ist die bestehende **Kreativ Solutions GmbH**; Frello wird als deren **Produkt** geplant. **Status:** AKZEPTIERT MIT VORBEHALT · **EXTERN ZU PRÜFEN** (rechtlich/steuerlich).
- **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-04 · Separate Frello-Gesellschaft
- **Gründerentscheid:** Es ist **keine separate Frello-Gesellschaft beschlossen**. Die Frage einer eigenen juristischen Person mit «Frello» im Firmennamen ist **für den MVP nicht anwendbar**. **Status:** **NICHT ANWENDBAR FÜR DEN MVP / ZURÜCKGESTELLT** – Reaktivierung nur, falls später eine eigene juristische Person mit Frello im Firmennamen geplant wird. Die **Zefix-Basisprüfung des Produktnamens** bleibt Bestandteil von **D-02** (nicht von D-04).
- **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-08 · Anbieterzulassung
- **Gründerentscheid:** Im MVP nur geprüfte gewerbliche/institutionelle/gemeinnützige Anbieter; keine privaten Veranstalter. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-16 · Plattformrolle
- **Gründerentscheid:** Frello ist Vermittler; Anbieter bleibt Veranstalter/Leistungserbringer/Vertragspartner; Rolle pro Angebot juristisch bestätigen. **Status:** AKZEPTIERT · **EXTERN ZU PRÜFEN**.
- **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-11 · Provisionsmodell
- **Gründerentscheid:** 8 % Standard, 15 % für aktiv konzipierte/betreute Formate (Pilotgrundlage); betreute Formate ändern die Vermittlerrolle nicht automatisch. **Status:** AKZEPTIERT MIT VALIDIERUNG.
- **Offen:** Validierung der Sätze (A-09/A-10/A-13). **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-12 · Kostenlose Inserate
- **Gründerentscheid:** Kostenlose Veranstaltungen geprüfter Anbieter kostenlos inserierbar; kostenpflichtige Promotion kein MVP-Beschluss. **Status:** AKZEPTIERT.
- **Ergänzung (31.08.2026):** Der Promotions-Unterpunkt ist durch **D-38** für den MVP geschlossen (**keine** kostenpflichtige Promotion im MVP); ein späteres Promotionsmodell bleibt offen. **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Promotion-Schließung durch D-38) · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-13 · Externe Buchungen
- **Gründerentscheid (28.08.2026):** Nur für ausgewählte, geprüfte Partner, klar gekennzeichnet; separate Monetarisierung über Reichweite/Lead/B2B möglich. **Status:** TEILWEISE AKZEPTIERT.
- **Änderung des MVP-Scopes (31.08.2026, durch D-39):** **Externe Buchungen sind im MVP ausgeschlossen.** Frühere Aussagen, externe Buchungen seien im MVP für ausgewählte Partner möglich, **gelten für den MVP nicht mehr**. Eine Einführung wird frühestens nach dem Pilot neu entschieden; das Lead-/B2B-Preismodell bleibt offen und zurückgestellt.
- **Offen:** Lead-/B2B-Preismodell (nach Pilot). **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (MVP-Scope durch D-39) · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-17 · Zahlung online / vor Ort
- **Gründerentscheid:** Je Event Online-Zahlung und Zahlung vor Ort möglich. **Status:** TEILWEISE AKZEPTIERT · **EXTERN ZU PRÜFEN**.
- **Offen:** Provisionsabrechnung bei Vor-Ort-Zahlung; regulierter Zahlungsfluss. **Ergänzung (31.08.2026):** Im MVP keine Teilzahlungen (D-41); die rechtliche/technische Ausgestaltung des Zahlungsflusses bleibt hiervon unberührt und **[EXTERN ZU PRÜFEN]**. **Datum:** 28.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

### Identität, Buchung und Profile

#### D-15 · Angehörigenbuchung
- **Gründerentscheid:** Erlaubt; buchende Person benötigt Konto; buchende und teilnehmende Person getrennt; Zustimmung nachvollziehbar. **Status:** AKZEPTIERT · Datenschutz **EXTERN ZU PRÜFEN**.
- **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

#### D-20 · Gast-/Kontobuchung
- **Gründerentscheid:** Keine Gastbuchung; jede Buchung erfordert ein Konto; bei Angehörigenbuchung braucht die teilnehmende Person nicht zwingend ein eigenes Konto. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

#### D-21 · Profil-Sichtbarkeit
- **Gründerentscheid:** Aussenstehende sehen nur die Teilnehmerzahl; bestätigte Teilnehmende sehen Vornamen und freiwillige Profilbilder ihrer Eventgruppe; Profilbilder freiwillig. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

#### D-22 · Altersanzeige
- **Gründerentscheid:** Freiwillig sichtbare breite Generation (60+/70+/80+); genaues Geburtsdatum privat. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

#### D-26 · Telefonnummerverifikation
- **Gründerentscheid:** Vor der ersten Buchung verpflichtend; Nummer nicht öffentlich. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

#### D-27 · Support
- **Gründerentscheid (28.08.2026):** Rückrufservice in definierten Supportzeiten; keine ständig besetzte Hotline. **Status:** TEILWEISE AKZEPTIERT.
- **Ergänzung (31.08.2026, durch D-35):** Die konkreten **Supportzeiten für den Pilot** sind gesetzt (Mo–Fr 09:00–17:00, Rückruf < 1 Werktag, ausserhalb asynchron, dringende Sicherheit priorisiert). Dauerhafte Supportzeiten über den Pilot hinaus bleiben offen. **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Pilotzeiten durch D-35) · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

### Kommunikation

#### D-23 · Chat
- **Gründerentscheid:** Im MVP nur moderierter Event-Gruppenchat für bestätigte Teilnehmende; keine freien 1:1-Nachrichten. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

### Storno, Durchführung, Warteliste und No-show

#### D-18 · Stornomodelle
- **Gründerentscheid:** Anbieter wählen eines von drei Frello-Modellen (Flexibel: kostenlos bis 24 h; Standard: kostenlos bis 7 Tage, 50 % bis 48 h; Fix: keine reguläre Rückerstattung); keine freien eigenen Klauseln. **Status:** AKZEPTIERT · Detail **EXTERN ZU PRÜFEN**.
- **Offen/extern:** Ausnahmen, Gebührenanteile, Ersatzpersonen, juristische Formulierung. **Datum:** 28.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### D-19 · Durchführung/Nachrücken
- **Gründerentscheid:** Durchführungsentscheid grundsätzlich spätestens 48 h vorher; reguläres Nachrückangebot 12 h; bei <24 h bis Beginn 2 h Nachrückfrist. **Status:** AKZEPTIERT.
- **Ergänzung (31.08.2026):** Der bisher ungeregelte **<2 h-Sonderfall** ist durch **D-44** geregelt (Broadcast an alle Wartenden); die reguläre Reihenfolge- und Fristenlogik von D-19 bleibt ausserhalb dieses Sonderfalls unverändert. **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Sonderfall durch D-44) · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### No-show-Unterentscheid
- **Gründerentscheid:** Erster Fall Hinweis; bei Wiederholung zeitweise Buchungsbegrenzung mit Einsprachemöglichkeit; keine automatische Geldstrafe. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

### Bewertungen

#### D-24 · Öffentliche Bewertung
- **Gründerentscheid:** Ab fünf bestätigten Bewertungen; Bewertungsanzahl immer sichtbar; nur verifiziert Angemeldete/Teilgenommene bewerten; keine öffentliche Teilnehmerbewertung. **Status:** AKZEPTIERT.
- **Verfeinerung (31.08.2026, durch D-34):** Fünf öffentliche Kategorien und gleichgewichtete Durchschnittsformel; die «ab fünf»-Regel und die sichtbare Bewertungsanzahl bleiben unverändert. **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Verfeinerung durch D-34) · **ADR:** [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md).

#### D-25 · Freitext/Feedback
- **Gründerentscheid:** Freitext im MVP nur intern; öffentlich nur strukturierte, aggregierte Resultate; Anbieter erhalten interne, möglichst anonymisierte Rückmeldungen. **Status:** AKZEPTIERT.
- **Verfeinerung (31.08.2026, durch D-34):** Anbieterrechte konkretisiert (Einsicht in anonymisiertes Feedback, nicht öffentliche Einsprache, keine öffentliche Anbieterantwort im MVP). **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Verfeinerung durch D-34) · **ADR:** [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md).

### Technik

#### D-28 · Web-first / Native-App-Trigger
- **Gründerentscheid (28.08.2026):** Responsive Web/PWA zuerst; native Apps erst bei belegter Wiederbuchung, regelmässiger mobiler Nutzung und erkennbarem App-/Push-Bedarf; kein Kalendertermin. **Status damals:** AKZEPTIERT.
- **Änderung (31.08.2026, durch D-46):** siehe **D-46**. Native Apps sind nicht mehr ausschliesslich an spätere Kennzahlenschwellen gebunden, sondern werden **früh/parallel als Fast-Follow** vorbereitet; **Web/PWA bleibt MVP-Launch**, die installierbare PWA wird verbindliches MVP-Ziel. Feste Schwellen entfallen (D-45). **Datum:** 28.08.2026 (Grundsatz), 31.08.2026 (Änderung durch D-46) · **ADR:** [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md).

---

### Zweite Tranche (31.08.2026): Eventdarstellung, Bewertung, Pilotbetrieb, Buchungs-Ausnahmen, Technik

#### D-31 · Pflichtfelder für Veranstaltungen
- **Gründerentscheid:** Verbindlicher Pflichtfeldsatz je Event.
  - **Immer verpflichtende Kernfelder:** Titel; verständliche Kurzbeschreibung; Kategorie; Datum; Beginn; Ende; Veranstaltungsort; vollständige Adresse; Stadt bzw. Region; Preis; Zahlungsart; Mindestteilnehmerzahl; Höchstteilnehmerzahl; Buchungsschluss; gewähltes Stornomodell; Zeitpunkt des Durchführungsentscheids; Sprache; verantwortlicher geprüfter Anbieter; Kontaktmöglichkeit; Zugänglichkeitsangaben; Kennzeichnung «Alleine willkommen».
  - **Bedingt verpflichtend (wenn für das Angebot relevant):** körperliches Aktivitätsniveau; erforderliche Ausrüstung; Verpflegung; transparenter Altersfokus; Kennzeichnung externer Buchung; Qualifikationsnachweis bei Gesundheits-/Bewegungs- oder vergleichbar sensiblen Angeboten.
  - **Freiwillig im MVP:** ÖV-Informationen; Parkmöglichkeiten; Veranstaltungsbild.
- **Wechselwirkung D-39:** Da externe Buchungen im MVP ausgeschlossen sind (D-39), ist das Feld **Kennzeichnung externer Buchung** für den MVP **inaktiv/nicht anwendbar**; es wird erst bei einer späteren Reaktivierung externer Buchungen relevant.
- **Abgrenzung:** Es werden **keine** technischen Datenbankfelder oder API-Schemas beschlossen; die fachliche Pflichtfeldliste ist maßgeblich, die technische Umsetzung folgt später. **Status:** AKZEPTIERT. **Datum:** 31.08.2026 · **ADR:** [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md).

#### D-32 · Pflichtfilter im MVP
- **Gründerentscheid:** Verbindliche MVP-Filter: Stadt bzw. Region; Datum bzw. Zeitraum; Kategorie; Preis; kostenlos; Zugänglichkeit; Aktivitätsniveau; «Alleine willkommen»; verfügbare Plätze.
- **Später vorgemerkt (nicht Bestandteil des verbindlichen MVP-Filtersets):** Sprache; ÖV-Erreichbarkeit; Verpflegung; Altersfokus – **zurückgestellt** als offener Ausbaupunkt, nicht als implementierte MVP-Anforderung. **Status:** AKZEPTIERT FÜR DEN MVP. **Datum:** 31.08.2026 · **ADR:** [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md).

#### D-33 · Manuelle Frello-Freigabe jedes Events
- **Gründerentscheid:** Kein Event wird automatisch veröffentlicht. Jedes Event beginnt als **Entwurf**; vor Veröffentlichung erfolgt eine **vollständige manuelle Prüfung durch Frello** mit mindestens den Ergebnissen **freigegeben / abgelehnt / zur Überarbeitung zurückgegeben**. Fehlende oder unklare Pflichtangaben (D-31) verhindern die Veröffentlichung.
- **Einordnung:** D-33 verschärft und konkretisiert die bestehende Kuratierungs-/Prüfpflicht (Businessplan §31). D-33 **autorisiert keine automatisierte oder KI-basierte Freigabe**. **Status:** AKZEPTIERT. **Datum:** 31.08.2026 · **ADR:** [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md).

#### D-34 · Strukturierte Bewertungen
- **Gründerentscheid:** Fünf öffentlich bewertete Kategorien: (1) Gesamterlebnis, (2) Organisation, (3) Beschreibungstreue, (4) Freundlichkeit bzw. Betreuung, (5) Preis-Leistungs-Verhältnis. **Zugänglichkeit** wird strukturiert erfasst, bleibt im MVP **intern** und fließt **nicht** in die öffentliche Gesamtnote ein.
- **Öffentliche Gesamtnote:** **gleichgewichteter arithmetischer Durchschnitt der fünf öffentlichen Kategorien** (jede Kategorie gleiches Gewicht), **Rundung auf eine Dezimalstelle**; Anzeige weiterhin erst **ab fünf bestätigten Bewertungen**; **Bewertungsanzahl bleibt sichtbar**.
- **Anbieterrechte:** Einsicht in anonymisiertes internes Freitextfeedback; nicht öffentliche Stellungnahme bzw. Einsprache; **keine öffentliche Anbieterantwort im MVP**.
- **Weiterhin offen:** genauer Einspracheprozess; Moderationsregeln; interne Alters-/Zeitraum-/Trenddarstellung.
- **Externe Prüfpflicht:** revDSG und Persönlichkeitsrecht bzgl. anonymisierter Feedback-Einsicht und Einsprache.
- **Einordnung:** D-34 verfeinert D-24 und D-25, ohne deren Grundentscheidungen aufzuheben. **Status:** AKZEPTIERT · Detail OFFEN · EXTERN ZU PRÜFEN. **Datum:** 31.08.2026 · **ADR:** [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md).

#### D-35 · Supportzeiten im Pilot
- **Gründerentscheid:** Rückrufservice **Montag bis Freitag, 09:00–17:00 Uhr**; **Rückruf innerhalb eines Werktags**; außerhalb dieser Zeiten Kontaktaufnahme **asynchron**; **dringende Sicherheitsmeldungen** erhalten einen **priorisierten Melde- und Eskalationsweg**; weiterhin **keine dauerhaft besetzte Hotline**.
- **Einordnung:** D-35 schließt den offenen Supportzeit-Unterpunkt von D-27 **für den Pilot**; dauerhafte Zeiten bleiben offen. **Status:** AKZEPTIERT ALS PILOTPARAMETER. **Datum:** 31.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

#### D-36 · Pilotdauer
- **Gründerentscheid:** Pilotdauer **16 Wochen**. Die Eignung von 16 Wochen zur Bewertung von Wiederbuchung, Angebotsdichte und Betriebsbelastung bleibt eine **zu validierende Pilothypothese** (A-03).
- **Einordnung:** setzt den offenen Pilotdauer-Unterpunkt von D-29 als Pilotparameter fest. **Status:** AKZEPTIERT ALS PILOTPARAMETER · zu validieren. **Datum:** 31.08.2026 · **ADR:** [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md).

#### D-37 · Gemeinsamer Pilotstart aller vier Städte
- **Gründerentscheid – ausdrückliche Änderung von D-29:**
  - **Frühere Regel (D-29, 28.08.2026):** Jede Stadt konnte nach Erreichen ihrer eigenen Dichteschwelle (≥5 Anbieter / ≥10 Termine) **öffentlich einzeln starten**.
  - **Neue Regel (31.08.2026):** Der **offizielle Pilot beginnt gleichzeitig** in Zürich, Basel, Bern und Luzern. **Voraussetzung:** jede der vier Städte verfügt über **mindestens fünf geprüfte Anbieter** und **mindestens zehn kommende Termine**; erst wenn **alle vier** Städte beide Schwellen erfüllen, beginnt die gemeinsame **16-wöchige** Pilotmessung (D-36).
  - **Folgen:** keine separate offizielle 16-Wochen-Messung je Stadt; keine Stadt startet den offiziellen Pilot allein; eine mögliche **Soft-Launch-Vorschau** für früher bereite Städte bleibt **offen** und ist nicht beschlossen.
- **Betroffene D-IDs/ADRs:** D-29; [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md). **Auswirkungen:** Businessplan §19/§28/§34 aktualisiert; A-26 (Parallelbetrieb) bleibt zu validieren. **Status:** AKZEPTIERT. **Datum:** 31.08.2026.

#### D-38 · Keine kostenpflichtige Promotion im MVP
- **Gründerentscheid:** Im MVP **keine** kostenpflichtige Promotion, **keine** bezahlte Hervorhebung oder bevorzugte Platzierung. Ein mögliches Promotionsmodell wird **frühestens nach dem Pilot** neu entschieden und bleibt **offen/zurückgestellt**.
- **Einordnung:** schließt den MVP-Unterpunkt von D-12, ohne ein späteres Geschäftsmodell festzulegen. **Status:** AKZEPTIERT FÜR DEN MVP. **Datum:** 31.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-39 · Keine externen Buchungen im MVP
- **Gründerentscheid:** Externe Buchungen sind **nicht Bestandteil des MVP**; im MVP **keine** Weiterleitung an externe Buchungssysteme; **kein** Lead-, B2B- oder externes Buchungsgebührenmodell im MVP. Eine mögliche Einführung wird **frühestens nach dem Pilot** neu entschieden.
- **Einordnung – Änderung des MVP-Scopes von D-13:** **frühere Regel:** externe Buchungen im MVP für ausgewählte, geprüfte Partner möglich; **neue Regel:** im MVP ausgeschlossen. D-13 wird entsprechend aus dem MVP-Scope genommen; die spätere Option bleibt **zurückgestellt**. **Betroffen:** D-13; [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md). **Status:** AKZEPTIERT FÜR DEN MVP / SPÄTER ZURÜCKGESTELLT. **Datum:** 31.08.2026.

#### D-40 · Buchungsübertragung
- **Gründerentscheid:** Eine buchende Person kann ihre Buchung **bis 24 Stunden vor Veranstaltungsbeginn selbstständig übertragen**. Der **Empfänger** muss ein bestehendes Frello-Konto besitzen, die **Telefonverifikation nach D-26** abgeschlossen haben und die Teilnahmebedingungen des Events erfüllen. **Weniger als 24 Stunden** vor Beginn ist eine Übertragung **nur über den Frello-Support** möglich. Die gebuchte **Platzanzahl bleibt unverändert**. **Teilnahme-, Check-in- und Bewertungsberechtigung** gehen auf die tatsächlich teilnehmende Person über; die übertragende Person verliert diese Berechtigungen. Die Übertragung wird **nachvollziehbar protokolliert**. Der **Angehörigenmodus (D-15)** bleibt ein eigener, zulässiger Buchungsweg.
- **Weiterhin offen:** genaue Anzeige-/Bestätigungsschritte; Check-in-Guardrails; Missbrauchsgrenzen; Häufigkeitsbegrenzungen; konkrete Support-Prüfung bei kurzfristigen Übertragungen.
- **Externe Prüfpflicht:** revDSG und Einwilligung bei der Übertragung personenbezogener Buchungsdaten. **Status:** AKZEPTIERT IM GRUNDSATZ · Details OFFEN · EXTERN ZU PRÜFEN. **Datum:** 31.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### D-41 · Keine Teilzahlungen im MVP
- **Gründerentscheid:** Online-Buchungen werden im MVP **vollständig bezahlt**; **Teil- und Ratenzahlungen sind im MVP ausgeschlossen**. Ein späteres Teilzahlungsmodell bleibt **zurückgestellt/unentschieden**.
- **Abgrenzung:** D-41 trifft **keine** Aussage über die rechtliche oder technische Ausgestaltung des Zahlungsflusses nach D-17. **Status:** AKZEPTIERT FÜR DEN MVP. **Datum:** 31.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### D-42 · Absage durch Anbieter
- **Gründerentscheid (fachlicher Grundsatz):** Bei einer Absage durch den Anbieter – einschließlich wetterbedingter oder kurzfristiger Absage – haben Teilnehmende mit **Online-Zahlung Anspruch auf vollständige Rückerstattung**; **vollständige Rückerstattung ist der Standard**. Ein **Ersatztermin bzw. eine Umbuchung darf zusätzlich angeboten** werden; die teilnehmende Person besitzt das **Wahlrecht** und muss keine Umbuchung akzeptieren.
- **Hinweis:** Dies ist **kein** rechtlich bestätigter Klauseltext.
- **Externe Prüfpflicht:** Konsumentenschutz; Vertragsrecht; Zahlungs-/Erstattungsprozess; rechtliche Formulierung; Abgrenzung höherer Gewalt und sonstiger Absagegründe. **Status:** AKZEPTIERT IM FACHLICHEN GRUNDSATZ · EXTERN ZU PRÜFEN. **Datum:** 31.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### D-43 · Ausfall einer zentralen Leistung
- **Gründerentscheid (fachlicher Grundsatz):** Bei Ausfall des Anbieters oder einer für das Event zentralen Leistung: fachliche Behandlung **entsprechend D-42**; **vollständige Rückerstattung bleibt Standard**; optionale Umbuchung/Ersatztermin mit **Wahlrecht**; **aktive Information** der betroffenen Personen über die verfügbaren Frello-Kommunikationskanäle; der Vorgang wird **nachvollziehbar dokumentiert**; **wiederholte Ausfälle** werden als **internes Qualitätssignal** geführt.
- **Hinweis:** «Push» ist **nicht** als bereits technisch verfügbarer Kanal zu verstehen; Benachrichtigungskanäle sind fachlich beschrieben, die technische Kanalwahl folgt später.
- **Externe Prüfpflichten:** mindestens wie D-42. **Status:** AKZEPTIERT IM FACHLICHEN GRUNDSATZ · EXTERN ZU PRÜFEN. **Datum:** 31.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### D-44 · Wartelisten-Sonderfall unter zwei Stunden
- **Gründerentscheid:** Gilt **ausschließlich**, wenn **weniger als zwei Stunden** bis Veranstaltungsbeginn verbleiben und ein Platz frei wird:
  - das Nachrückangebot wird **gleichzeitig an alle aktuell berechtigten Personen auf der Warteliste** gesendet;
  - die **erste vollständig bestätigte digitale Zusage** erhält den Platz;
  - die Zusage ist **bis Veranstaltungsbeginn** möglich, solange der Platz noch frei ist;
  - alle übrigen Personen erhalten nach Vergabe eine klare Information, dass der Platz nicht mehr verfügbar ist;
  - sagt **niemand digital zu**, bleibt der Platz **frei**;
  - der Anbieter darf den Platz **nicht** spontan vor Ort an eine unverifizierte oder nicht digital eingebuchte Person vergeben;
  - **D-20 und D-26 gelten ohne Ausnahme**;
  - die reguläre Reihenfolge- und Fristenlogik von **D-19 bleibt außerhalb dieses Sonderfalls unverändert**.
- **Weiterhin offen:** ob ein Broadcast-Verfahren später auch für reguläre Wartelistensituationen eingesetzt wird.
- **Einordnung:** ausdrücklich begrenzte Ausnahme von der sequentiellen Wartelistenreihenfolge, **keine** Ausnahme von Konto-/Verifikationspflichten. **Status:** AKZEPTIERT. **Datum:** 31.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### D-45 · Entscheidung über Native-App-Auslösung
- **Gründerentscheid:** **Keine** festen automatischen Kennzahlenschwellen. Der konkrete Start bzw. Ausbau nativer Apps erfolgt durch eine **Gesamtbewertung des Gründers**; jede native Umsetzung benötigt eine **separate ausdrückliche Freigabe**. Pilotdaten und Nutzerfeedback dienen als Entscheidungsgrundlage, lösen aber **keine automatische Entwicklung** aus.
- **Einordnung:** aktualisiert A-21 (keine festen Schwellen mehr, sondern qualitative und quantitative Gesamtbewertung). **Status:** AKZEPTIERT. **Datum:** 31.08.2026 · **ADR:** [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md).

#### D-46 · Web/PWA-Launch und native App als Fast-Follow
- **Gründerentscheid – ausdrückliche Änderung von D-28 und ADR-007:**
  - **Frühere Regel (D-28, 28.08.2026):** Native Apps erst **nach** nachgewiesener wiederkehrender Nutzung und nach Erreichen später festgelegter Schwellen.
  - **Neue Regel (31.08.2026):** Der MVP startet als **responsive Webplattform bzw. installierbare PWA**; die **installierbare PWA ist ein verbindliches MVP-Ziel**. Der **öffentliche Pilotstart hängt nicht** von der Fertigstellung einer nativen App ab. Eine native App wird **früh/parallel als Fast-Follow vorbereitet**. Die konkrete Freigabe/Priorisierung nativer Entwicklung erfolgt weiterhin **separat nach D-45**.
  - **Abgrenzung:** D-46 **autorisiert keine technische Umsetzung** und legt weder Plattformreihenfolge noch Entwicklungsframework fest. «Fast-Follow» bedeutet eine **früh vorgemerkte Produktphase** nach bzw. parallel zum Web/PWA-MVP, **nicht** automatische sofortige Implementierung.
- **Zwingend konsistent angepasst:** D-28 (Register); ADR-007; Businessplan §32, §34, §35; Roadmap-/Zusammenfassungsaussagen; A-21 (und A-22); **D-05** (App-Store-Namensprüfung nun organisatorisch anstehend, ohne behauptetes Ergebnis).
- **Neue Pilothypothese:** Die Annahme, dass eine native App für die Zielgruppe **wesentlich einfacher** als eine installierbare PWA ist, muss durch Nutzer-/Feldtests geprüft werden (A-28).
- **Betroffene D-IDs/ADRs:** D-28, D-05, D-45; [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md), [ADR-001](./decisions/ADR-001-marke-domain-schutz.md). **Status:** AKZEPTIERT. **Datum:** 31.08.2026.

---

## Weiterhin offene Unterentscheide (Sammelübersicht)

| Bezug | Offener Unterpunkt | Status |
|---|---|---|
| D-01 | Registrar-Nachweis `frello.ch` | AUSSTEHENDE UMSETZUNG |
| D-02 | professionelle Ähnlichkeitsrecherche (Stufe 2) | EXTERN ZU PRÜFEN |
| D-05 | App-Store-Namensprüfung (jetzt organisatorisch anstehend) | AUSSTEHENDE UMSETZUNG |
| D-06 | Nachweis Handle-Sicherung | AUSSTEHENDE UMSETZUNG |
| D-11 | Validierung 8 %/15 % | AKZEPTIERT MIT VALIDIERUNG |
| D-12 / D-38 | kostenpflichtige Promotion (im MVP ausgeschlossen; späteres Modell) | OFFEN (nach Pilot) |
| D-13 / D-39 | Lead-/B2B-Modell externe Buchungen (im MVP ausgeschlossen) | ZURÜCKGESTELLT (nach Pilot) |
| D-17 | Provisionsabrechnung Vor-Ort, Zahlungsfluss | EXTERN ZU PRÜFEN |
| D-18 | Ausnahmen/Gebühren/Ersatzpersonen/Formulierung | EXTERN ZU PRÜFEN |
| D-27 / D-35 | dauerhafte Supportzeiten über den Pilot hinaus | OFFEN |
| D-28 / D-46 | Plattformreihenfolge/Framework nativer App (technisch, später) | OFFEN (technisch) |
| D-29 / D-36 | Pilotdauer (16 Wochen gesetzt) – Wirksamkeit | ZU VALIDIEREN |
| D-29 / D-37 | Soft-Launch-Vorschau für früher bereite Städte | OFFEN |
| D-34 | Einspracheprozess, Moderationsregeln, interne Trenddarstellung | OFFEN |
| D-40 | Anzeige-/Check-in-Guardrails, Missbrauchs-/Häufigkeitsgrenzen der Übertragung | OFFEN |
| D-41 | späteres Teilzahlungsmodell | ZURÜCKGESTELLT |
| D-44 | genereller Warteliste-Broadcast (auch regulär) | OFFEN |
| D-45 | konkreter Native-App-Startentscheid (Gesamtbewertung) | OFFEN |
| D-07 | diskriminierungsrechtliche Altersfokus-Prüfung | EXTERN ZU PRÜFEN |
| D-04 | Reaktivierung nur bei geplanter eigener Frello-Gesellschaft | NICHT ANWENDBAR FÜR DEN MVP |
| D-30 | operative Deutschland-Expansion (Kriterien beschlossen) | wartet auf Kriterienerfüllung |

## Dokumentierte Konflikte und Änderungen gleichrangiger Quellen

Zum Stand 0.2 (28.08.2026) bestanden **keine** Konflikte zwischen gleichrangigen verbindlichen Quellen. Der frühere Klärungspunkt zu `Kreativ Solutions GmbH` (in V0.1 als D-14 offen geführt) ist durch den Gründerentscheid **D-14** aufgelöst. **D-04** (separate Frello-Gesellschaft) ist davon getrennt und **für den MVP nicht anwendbar**; die Zefix-Produktnamensprüfung liegt bei **D-02**.

**Ausdrückliche Änderungen beschlossener Entscheide durch die zweite Tranche (31.08.2026):**

| Änderung | Frühere Regel | Neue Regel | Datum | Betroffen | Auswirkung | Weiterhin offen |
|---|---|---|---|---|---|---|
| **D-37 → D-29** | Öffentlicher Start je Stadt einzeln nach eigener Dichteschwelle | Gemeinsamer Start aller vier Städte, erst wenn alle vier je ≥5 Anbieter/≥10 Termine erfüllen; gemeinsame 16-Wochen-Messung | 31.08.2026 | D-29, ADR-002, BP §19/§28/§34, A-26 | Keine stadtweise offizielle Startmessung; schnelle Städte warten auf die langsamste | Soft-Launch-Vorschau; operative Leistbarkeit (A-26) |
| **D-39 → D-13** | Externe Buchungen im MVP für geprüfte Partner möglich | Externe Buchungen im MVP ausgeschlossen; frühestens nach Pilot | 31.08.2026 | D-13, ADR-003, BP §23/§24/§35 | MVP nur interne Buchung; kein Lead-/B2B-Modell im MVP | Lead-/B2B-Modell nach Pilot |
| **D-46 → D-28** | Native Apps erst nach belegter Nutzung/Schwellen | Web/PWA-MVP (installierbare PWA verbindlich) + native App als Fast-Follow; Freigabe separat (D-45) | 31.08.2026 | D-28, D-05, ADR-007, ADR-001, BP §32/§34/§35, A-21/A-22 | Native App früh/parallel vorgemerkt; D-05 nun anstehend; kein Automatismus/keine techn. Umsetzung | Plattformreihenfolge/Framework; konkreter App-Startentscheid |

Diese Änderungen sind **nicht** stillschweigend erfolgt: Sie beruhen auf ausdrücklicher Gründerfreigabe vom 31.08.2026; die früheren Regeln bleiben oben als Historie sichtbar. **Keine** dieser Änderungen stellt eine Rechts-, Marken-, Domain- oder App-Store-Prüfung als durchgeführt dar.
