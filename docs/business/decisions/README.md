# Architecture / Business Decision Records (ADRs) – Frello

**Stand:** 31. August 2026 · Zugehörig: [Business-README](../README.md) · [Businessplan](../01_BUSINESS_PLAN_V0.3.md) · [Offene Gründerentscheidungen](../02_OPEN_FOUNDER_DECISIONS.md) · [Annahmenregister](../03_ASSUMPTION_REGISTER.md) · [Quellenregister](../04_SOURCE_REGISTER.md)

Dieses Verzeichnis dokumentiert die konsolidierten Gründerentscheide als thematische Decision Records. Die erste Tranche (`D-01`…`D-30`) wurde am **28. August 2026** eingearbeitet; die zweite Tranche (`D-31`…`D-46`) am **31. August 2026**. Jede Entscheidungs-ID verweist aus dem [Entscheidungsregister](../02_OPEN_FOUNDER_DECISIONS.md) auf genau eine ADR-Datei hier. Die Entscheide sind bewusst thematisch gebündelt (acht ADRs statt sechsundvierzig nahezu identischer Dateien).

**Nachweis der Entscheide:** konsolidierte Gründerfreigabe im Arbeitsauftrag «Frello – konsolidierte Gründerentscheide und Übergabeprompt» (28.08.2026) sowie die strukturierte interaktive Gründerklärung «fachliche Gründerentscheidungen vor Produktspezifikation V0.1» (31.08.2026) und die hier abgeleiteten ADR-Dateien.

## Statusmodell (Decision-Status)

Ergänzend zu den Governance-Kategorien der Businessdokumente (siehe [Business-README](../README.md)) verwenden die ADRs und das Entscheidungsregister folgende **Decision-Status**:

| Status | Bedeutung |
|---|---|
| **AKZEPTIERT** | Gründerentscheid vollständig getroffen. |
| **AKZEPTIERT MIT VALIDIERUNG** | Operative Grundrichtung beschlossen; Kennzahl/Satz muss im Pilot validiert werden. |
| **TEILWEISE AKZEPTIERT** | Hauptentscheid getroffen; klar bezeichnete Unterpunkte bleiben offen. |
| **ZURÜCKGESTELLT** | Bewusst an einen späteren Trigger gebunden. |
| **NICHT ANWENDBAR FÜR DEN MVP / ZURÜCKGESTELLT** | Fragestellung ist für den aktuellen MVP nicht anwendbar und bleibt zurückgestellt; Reaktivierung nur, wenn die dafür definierte spätere Voraussetzung eintritt (z. B. D-04: nur falls später eine separate juristische Person mit «Frello» im Firmennamen geplant wird). |
| **AUSSTEHENDE UMSETZUNG** | Entscheid getroffen; externe/organisatorische Handlung (z. B. Registrar-Nachweis, App-Store-Namensprüfung) noch nicht belegt. |
| **EXTERN ZU PRÜFEN** | Fachliche (rechtliche/steuerliche/regulatorische) Bestätigung ausstehend. |
| **OFFEN** | Keine Gründerfreigabe. |

Ein Entscheid kann mehrere Status kombinieren (z. B. «AKZEPTIERT · Umsetzung ausstehend · Datenschutz EXTERN ZU PRÜFEN»).

## ADR-Übersicht und D-ID-Zuordnung

| ADR | Titel | Abgedeckte D-IDs |
|---|---|---|
| [ADR-001](./ADR-001-marke-domain-schutz.md) | Markenstatus, Domain und Schutzprozess | D-01, D-02, D-03, D-05, D-06 |
| [ADR-002](./ADR-002-zielgruppe-pilotgebiet-dichte.md) | Zielgruppe, Pilotgebiet und Pilotdichte | D-07, D-09, D-10, D-29, D-36, D-37 |
| [ADR-003](./ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) | Betreiberin, Anbieterzulassung, Vermittlerrolle und Monetarisierung | D-04, D-08, D-11, D-12, D-13, D-14, D-16, D-38, D-39 |
| [ADR-004](./ADR-004-buchung-zahlung-storno-warteliste.md) | Buchung, Zahlung, Storno, Mindestzahl, Warteliste und No-shows | D-17, D-18, D-19 (inkl. No-show-Unterentscheid), D-40, D-41, D-42, D-43, D-44 |
| [ADR-005](./ADR-005-konten-angehoerige-profile-chat-support.md) | Konten, Angehörigenbuchung, Profile, Verifikation, Chat und Support | D-15, D-20, D-21, D-22, D-23, D-26, D-27, D-35 |
| [ADR-006](./ADR-006-bewertungen-feedback-qualitaet.md) | Bewertungen, Feedback und Qualitätssteuerung | D-24, D-25, D-34 |
| [ADR-007](./ADR-007-web-first-app-und-deutschland-trigger.md) | Web-first, Native-App-Trigger und Deutschland-Trigger | D-28, D-30, D-45, D-46 |
| [ADR-008](./ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md) | Eventdarstellung, Pflichtfelder, MVP-Filter und Freigabeworkflow | D-31, D-32, D-33 |

Alle sechsundvierzig Entscheide (D-01 bis D-46) sind genau einer ADR zugeordnet.

**Warum eine neue ADR-008?** Die Entscheide D-31 (Pflichtfelder), D-32 (MVP-Filter) und D-33 (manueller Freigabeworkflow) betreffen die **Eventdarstellung, Auffindbarkeit und Veröffentlichungsfreigabe** – einen Sachbereich, den keine der bestehenden ADRs fachlich sauber abdeckt (ADR-004 behandelt Buchung/Zahlung/Storno/Warteliste, nicht die Feld-/Filter-/Freigabelogik). Daher die nächste freie Nummer ADR-008.

**Änderungen an bestehenden Entscheiden (31.08.2026):** D-37 ändert D-29 (gemeinsamer Pilotstart; ADR-002), D-39 nimmt D-13 aus dem MVP-Scope (ADR-003), D-46 ändert D-28 (Web/PWA + native Fast-Follow; ADR-007) und löst die App-Store-Namensprüfung D-05 als nun anstehend aus (ADR-001). Historie und Details siehe [Entscheidungsregister](../02_OPEN_FOUNDER_DECISIONS.md).
