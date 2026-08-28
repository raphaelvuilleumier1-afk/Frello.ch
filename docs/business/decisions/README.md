# Architecture / Business Decision Records (ADRs) – Frello

**Stand:** 28. August 2026 · Zugehörig: [Business-README](../README.md) · [Businessplan](../01_BUSINESS_PLAN_V0.2.md) · [Offene Gründerentscheidungen](../02_OPEN_FOUNDER_DECISIONS.md) · [Annahmenregister](../03_ASSUMPTION_REGISTER.md) · [Quellenregister](../04_SOURCE_REGISTER.md)

Dieses Verzeichnis dokumentiert die am **28. August 2026** konsolidierten Gründerentscheide als thematische Decision Records. Jede Entscheidungs-ID (`D-01` … `D-30`) verweist aus dem [Entscheidungsregister](../02_OPEN_FOUNDER_DECISIONS.md) auf genau eine ADR-Datei hier. Die Entscheide sind bewusst thematisch gebündelt (sieben ADRs statt dreissig nahezu identischer Dateien).

**Nachweis der Entscheide:** konsolidierte Gründerfreigabe im Arbeitsauftrag «Frello – konsolidierte Gründerentscheide und Übergabeprompt» (28.08.2026) sowie die hier abgeleiteten ADR-Dateien.

## Statusmodell (Decision-Status)

Ergänzend zu den Governance-Kategorien der Businessdokumente (siehe [Business-README](../README.md)) verwenden die ADRs und das Entscheidungsregister folgende **Decision-Status**:

| Status | Bedeutung |
|---|---|
| **AKZEPTIERT** | Gründerentscheid vollständig getroffen. |
| **AKZEPTIERT MIT VALIDIERUNG** | Operative Grundrichtung beschlossen; Kennzahl/Satz muss im Pilot validiert werden. |
| **TEILWEISE AKZEPTIERT** | Hauptentscheid getroffen; klar bezeichnete Unterpunkte bleiben offen. |
| **ZURÜCKGESTELLT** | Bewusst an einen späteren Trigger gebunden. |
| **AUSSTEHENDE UMSETZUNG** | Entscheid getroffen; externe Handlung (z. B. Registrar-Nachweis) noch nicht belegt. |
| **EXTERN ZU PRÜFEN** | Fachliche (rechtliche/steuerliche/regulatorische) Bestätigung ausstehend. |
| **OFFEN** | Keine Gründerfreigabe. |

Ein Entscheid kann mehrere Status kombinieren (z. B. «AKZEPTIERT · Umsetzung ausstehend · Datenschutz EXTERN ZU PRÜFEN»).

## ADR-Übersicht und D-ID-Zuordnung

| ADR | Titel | Abgedeckte D-IDs |
|---|---|---|
| [ADR-001](./ADR-001-marke-domain-schutz.md) | Markenstatus, Domain und Schutzprozess | D-01, D-02, D-03, D-05, D-06 |
| [ADR-002](./ADR-002-zielgruppe-pilotgebiet-dichte.md) | Zielgruppe, Pilotgebiet und Pilotdichte | D-07, D-09, D-10, D-29 |
| [ADR-003](./ADR-003-betreiberin-anbieter-rolle-monetarisierung.md) | Betreiberin, Anbieterzulassung, Vermittlerrolle und Monetarisierung | D-04, D-08, D-11, D-12, D-13, D-14, D-16 |
| [ADR-004](./ADR-004-buchung-zahlung-storno-warteliste.md) | Buchung, Zahlung, Storno, Mindestzahl, Warteliste und No-shows | D-17, D-18, D-19 (inkl. No-show-Unterentscheid) |
| [ADR-005](./ADR-005-konten-angehoerige-profile-chat-support.md) | Konten, Angehörigenbuchung, Profile, Verifikation, Chat und Support | D-15, D-20, D-21, D-22, D-23, D-26, D-27 |
| [ADR-006](./ADR-006-bewertungen-feedback-qualitaet.md) | Bewertungen, Feedback und Qualitätssteuerung | D-24, D-25 |
| [ADR-007](./ADR-007-web-first-app-und-deutschland-trigger.md) | Web-first, Native-App-Trigger und Deutschland-Trigger | D-28, D-30 |

Alle dreissig Entscheide (D-01 bis D-30) sind genau einer ADR zugeordnet.
