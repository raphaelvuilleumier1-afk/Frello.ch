# Gründerentscheide und offene Punkte – Frello

**Stand:** 28. August 2026 · **Version:** 0.2 · Zugehörig: [Businessplan](./01_BUSINESS_PLAN_V0.2.md) · [Annahmenregister](./03_ASSUMPTION_REGISTER.md) · [Quellenregister](./04_SOURCE_REGISTER.md) · [README](./README.md) · [ADR-Verzeichnis](./decisions/README.md)

Dieses Register führt alle materiellen Entscheidungen (`D-01`…`D-30`). Am **28. August 2026** wurde ein konsolidierter Gründerentscheid eingearbeitet; die meisten Punkte sind nun ganz oder teilweise entschieden. Jede D-ID verweist auf die zuständige [ADR](./decisions/README.md). Historische Fragestellungen bleiben erhalten, soweit sie der Nachvollziehbarkeit dienen.

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

**Entscheidungsdatum der eingearbeiteten Entscheide:** 28. August 2026. **Nachweis:** konsolidierte Gründerfreigabe im Arbeitsauftrag «Frello – konsolidierte Gründerentscheide und Übergabeprompt» (28.08.2026) und die abgeleiteten [ADRs](./decisions/README.md).

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
| D-12 | Kostenlose Inserate geprüfter Anbieter | AKZEPTIERT (Promotion offen) | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-14 | Betreiberin Kreativ Solutions GmbH | AKZEPTIERT MIT VORBEHALT · EXTERN ZU PRÜFEN | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-15 | Angehörigenbuchung erlaubt | AKZEPTIERT · Datenschutz EXTERN ZU PRÜFEN | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-16 | Frello ist Vermittler | AKZEPTIERT · EXTERN ZU PRÜFEN | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-18 | Drei Stornomodelle | AKZEPTIERT · Detail EXTERN ZU PRÜFEN | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-19 | Durchführungs-/Nachrückfristen | AKZEPTIERT | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-20 | Keine Gastbuchung, Kontopflicht | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-21 | Profil-Sichtbarkeit in der Eventgruppe | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-22 | Breite Generationsanzeige (60+/70+/80+) | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-23 | Nur moderierter Event-Gruppenchat | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-24 | Öffentliche Bewertung ab fünf | AKZEPTIERT | [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md) |
| D-25 | Freitext nur intern, öffentlich aggregiert | AKZEPTIERT | [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md) |
| D-26 | Telefonnummerverifikation vor erster Buchung | AKZEPTIERT | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-28 | Web/PWA zuerst, native Apps per Trigger | AKZEPTIERT | [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md) |
| D-30 | Deutschland-Expansionsvoraussetzungen | AKZEPTIERT (Kriterien beschlossen; operative Expansion wartet auf Kriterienerfüllung) | [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md) |

### TEILWEISE AKZEPTIERT

| ID | Titel | Offener Unterpunkt | ADR |
|---|---|---|---|
| D-13 | Externe Buchungen (nur geprüfte Partner) | Lead-/B2B-Preismodell | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |
| D-17 | Online- und Vor-Ort-Zahlung | Provisionsabrechnung Vor-Ort, Zahlungsfluss | [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md) |
| D-27 | Rückrufservice statt Hotline | konkrete Supportzeiten | [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md) |
| D-29 | Paralleler Pilot ZH/BS/BE/LU, Dichte 5/10 | Pilotdauer | [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md) |

### ZURÜCKGESTELLT / NICHT ANWENDBAR FÜR DEN MVP (an Trigger bzw. künftigen Bedarf gebunden)

| ID | Titel | Trigger / Reaktivierung | ADR |
|---|---|---|---|
| D-03 | Deutschland-/EU-Namensprüfung | vor konkreter Deutschland-Expansion | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-05 | App-Store-Namensprüfung | bei Erreichen der Native-App-Schwellen | [ADR-001](./decisions/ADR-001-marke-domain-schutz.md) |
| D-04 | Separate Frello-Gesellschaft | **NICHT ANWENDBAR FÜR DEN MVP**; nur reaktivieren, falls später eine eigene juristische Person mit «Frello» im Firmennamen geplant wird | [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) |

> **Historische offene Punkte, die entfallen sind:** Die frühere Version 0.1 führte D-07, D-09, D-10, D-16, D-24, D-26, D-28 u. a. als **OFFEN**. Diese sind nun entschieden (siehe oben). Keine Entscheidung wurde stillschweigend getroffen; jede beruht auf der Gründerfreigabe vom 28.08.2026.

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
- **Gründerentscheid:** Erst bei Erreichen der Native-App-Schwellen (D-28). **Status:** ZURÜCKGESTELLT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-001](./decisions/ADR-001-marke-domain-schutz.md).

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
- **Gründerentscheid:** Paralleler Pilot in Zürich, Basel, Bern, Luzern; öffentlicher Start je Stadt erst ab **≥5 geprüften Anbietern und ≥10 kommenden Terminen**. **Status:** TEILWEISE AKZEPTIERT.
- **Offen:** Pilotdauer (Hypothese A-03). **Datum:** 28.08.2026 · **ADR:** [ADR-002](./decisions/ADR-002-zielgruppe-pilotgebiet-dichte.md).

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
- **Gründerentscheid:** Kostenlose Veranstaltungen geprüfter Anbieter kostenlos inserierbar; kostenpflichtige Promotion kein MVP-Beschluss. **Status:** AKZEPTIERT (Promotion **OFFEN**).
- **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-13 · Externe Buchungen
- **Gründerentscheid:** Nur für ausgewählte, geprüfte Partner, klar gekennzeichnet; separate Monetarisierung über Reichweite/Lead/B2B möglich. **Status:** TEILWEISE AKZEPTIERT.
- **Offen:** konkretes Lead-/B2B-Preismodell. **Datum:** 28.08.2026 · **ADR:** [ADR-003](./decisions/ADR-003-betreiberin-anbieter-rolle-monetarisierung.md).

#### D-17 · Zahlung online / vor Ort
- **Gründerentscheid:** Je Event Online-Zahlung und Zahlung vor Ort möglich. **Status:** TEILWEISE AKZEPTIERT · **EXTERN ZU PRÜFEN**.
- **Offen:** Provisionsabrechnung bei Vor-Ort-Zahlung; regulierter Zahlungsfluss. **Datum:** 28.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

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
- **Gründerentscheid:** Rückrufservice in definierten Supportzeiten; keine ständig besetzte Hotline. **Status:** TEILWEISE AKZEPTIERT.
- **Offen:** konkrete Supportzeiten. **Datum:** 28.08.2026 · **ADR:** [ADR-005](./decisions/ADR-005-konten-angehoerige-profile-chat-support.md).

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
- **Datum:** 28.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

#### No-show-Unterentscheid
- **Gründerentscheid:** Erster Fall Hinweis; bei Wiederholung zeitweise Buchungsbegrenzung mit Einsprachemöglichkeit; keine automatische Geldstrafe. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md).

### Bewertungen

#### D-24 · Öffentliche Bewertung
- **Gründerentscheid:** Ab fünf bestätigten Bewertungen; Bewertungsanzahl immer sichtbar; nur verifiziert Angemeldete/Teilgenommene bewerten; keine öffentliche Teilnehmerbewertung. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md).

#### D-25 · Freitext/Feedback
- **Gründerentscheid:** Freitext im MVP nur intern; öffentlich nur strukturierte, aggregierte Resultate; Anbieter erhalten interne, möglichst anonymisierte Rückmeldungen. **Status:** AKZEPTIERT.
- **Datum:** 28.08.2026 · **ADR:** [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md).

### Technik

#### D-28 · Web-first / Native-App-Trigger
- **Gründerentscheid:** Responsive Web/PWA zuerst; native Apps erst bei belegter Wiederbuchung, regelmässiger mobiler Nutzung und erkennbarem App-/Push-Bedarf; kein Kalendertermin. **Status:** AKZEPTIERT.
- **Offen:** konkrete Schwellenwerte (Hypothese A-21). **Datum:** 28.08.2026 · **ADR:** [ADR-007](./decisions/ADR-007-web-first-app-und-deutschland-trigger.md).

---

## Weiterhin offene Unterentscheide (Sammelübersicht)

| Bezug | Offener Unterpunkt | Status |
|---|---|---|
| D-01 | Registrar-Nachweis `frello.ch` | AUSSTEHENDE UMSETZUNG |
| D-02 | professionelle Ähnlichkeitsrecherche (Stufe 2) | EXTERN ZU PRÜFEN |
| D-06 | Nachweis Handle-Sicherung | AUSSTEHENDE UMSETZUNG |
| D-11 | Validierung 8 %/15 % | AKZEPTIERT MIT VALIDIERUNG |
| D-12 | kostenpflichtige Promotion | OFFEN |
| D-13 | Lead-/B2B-Preismodell | OFFEN |
| D-17 | Provisionsabrechnung Vor-Ort, Zahlungsfluss | EXTERN ZU PRÜFEN |
| D-18 | Ausnahmen/Gebühren/Ersatzpersonen/Formulierung | EXTERN ZU PRÜFEN |
| D-27 | konkrete Supportzeiten | OFFEN |
| D-28 | Schwellenwerte Native-App-Trigger | OFFEN (Hypothese) |
| D-29 | Pilotdauer | OFFEN (Hypothese) |
| D-07 | diskriminierungsrechtliche Altersfokus-Prüfung | EXTERN ZU PRÜFEN |
| D-04 | Reaktivierung nur bei geplanter eigener Frello-Gesellschaft | NICHT ANWENDBAR FÜR DEN MVP |
| D-30 | operative Deutschland-Expansion (Kriterien beschlossen) | wartet auf Kriterienerfüllung |

## Dokumentierte Konflikte gleichrangiger Quellen

Zum Stand 0.2 bestehen **keine** Konflikte zwischen gleichrangigen verbindlichen Quellen. Der frühere Klärungspunkt zu `Kreativ Solutions GmbH` (in V0.1 als D-14 offen geführt) ist durch den Gründerentscheid **D-14** aufgelöst: Die Kreativ Solutions GmbH ist die **geplante** Betreiberin, vorbehaltlich externer rechtlicher/steuerlicher Prüfung. **D-04** (separate Frello-Gesellschaft) ist davon getrennt und **für den MVP nicht anwendbar**; die Zefix-Produktnamensprüfung liegt bei **D-02**.
