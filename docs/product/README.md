# Frello – Produktspezifikation (Dokumentensatz)

Dieser Ordner enthält die **fachliche Produktspezifikation V0.1** für das Frello-MVP. Sie übersetzt die bereits getroffenen Gründerentscheide (`D-01`…`D-46`) und die zugehörigen [ADRs](../business/decisions/README.md) in eindeutiges, nachvollziehbares **Produktverhalten**.

> **Diese Spezifikation trifft keine neuen Gründer-, Rechts-, Architektur- oder Technologieentscheidungen.** Sie autorisiert **keine** technische Implementierung, kein Datenbank-/API-Schema und keine Anbieter-/Framework-/Hosting-Wahl. Technische Fragen gehören in eine spätere Architekturphase.

## Zweck

- Das entschiedene Produktverhalten des Frello-MVP fachlich präzise und prüfbar beschreiben.
- Jede verbindliche Anforderung lückenlos auf ihre Quelle (`D-ID` und `ADR`) zurückführen.
- Offene, extern zu prüfende, zurückgestellte und zu validierende Punkte **sichtbar** halten, statt sie durch Vermutung zu schliessen.

## Status

- **Version:** V0.1 (Erstentwurf der Produktspezifikation)
- **Stand:** 3. September 2026
- **Grundlage:** Businessplan V0.3, Register (D/A/Q), ADR-001…ADR-008
- **Freigabestatus:** **Entwurf zur Gründerprüfung – nicht freigegeben.** Der Dokumentensatz ist bewusst uncommitted und wartet auf eine separate ausdrückliche Freigabe.

## Abgrenzung zu `docs/business/` und `docs/research/`

| Ort | Rolle |
|---|---|
| [`docs/business/`](../business/README.md) | **Source of Truth** für das **Warum** und **Was entschieden wurde** (Businessplan, Entscheidungsregister, Annahmen, Quellen, ADRs). |
| `docs/product/` (dieser Ordner) | Beschreibt **ausschliesslich das daraus abgeleitete fachliche Produktverhalten**. Trifft keine Entscheidung neu und deutet keine um. |
| [`docs/research/`](../research/Senioren_Erlebnisplattform_Deep_Research.md) | Nachrangige Markt-/Produktanalyse (Source-of-Truth-Rang 6). |

**Bei jedem Widerspruch gilt die Rangfolge aus [`docs/business/README.md`](../business/README.md):** direkte Gründeranweisung → akzeptierte Gründerentscheide → Projektverfassung → akzeptierte ADRs → freigegebene Produkt-/Businessdokumente → Research → offene ADRs → Hypothesen → Notizen. **Nachrangige Research-Aussagen (z. B. Pilotdauer 12 Wochen, 10 % Provision, Stadt Zürich allein, native App «später») dürfen die neueren Entscheide nicht überschreiben.**

## Aussageklassen

Jede wesentliche Aussage in diesem Dokumentensatz ist einer dieser Klassen zugeordnet:

| Klasse | Bedeutung |
|---|---|
| **VERBINDLICH** | Aus einem akzeptierten Gründerentscheid/ADR abgeleitetes, verbindliches Produktverhalten. |
| **TEILWEISE BESCHLOSSEN** | Grundsatz beschlossen; benannte Unterpunkte bleiben offen. |
| **PILOTPARAMETER** | Für den Pilot gesetzter Wert; über den Pilot hinaus offen. |
| **ZU VALIDIEREN** | Beschlossene Richtung/Kennzahl, die im Pilot bestätigt werden muss (Verweis auf `A-ID`). |
| **OFFEN** | Vom Gründer noch zu treffender Unterentscheid. |
| **EXTERN ZU PRÜFEN** | Rechtliche/steuerliche/regulatorische Bestätigung ausstehend. |
| **ZURÜCKGESTELLT** | Bewusst an einen späteren Trigger/Zeitpunkt gebunden. |
| **NICHT TEIL DES MVP** | Bewusst ausserhalb des MVP-Umfangs. |
| **NICHT ANWENDBAR** | Für den MVP nicht einschlägig. |

**Grundregel:** Ein offener oder extern zu prüfender Punkt wird **nie** als verbindliche Anforderung formuliert. Platzhalter enthalten mindestens: Klassifikation, betroffene `D-ID`/`ADR`/`A-ID`, konkrete offene Frage bzw. Prüfpflicht, Auswirkung auf die Spezifikation und einen Status, der nicht fälschlich «erledigt» lautet. Alle solchen Punkte sind in [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md) gesammelt.

## ID-System

| ID-Raum | Inhalt |
|---|---|
| `JRN-xxx` | User Journeys ([`03_USER_JOURNEYS.md`](./03_USER_JOURNEYS.md)) |
| `FR-xxx` | Funktionale Anforderungen ([`04_FUNCTIONAL_REQUIREMENTS.md`](./04_FUNCTIONAL_REQUIREMENTS.md)) |
| `BR-xxx` | Geschäftsregeln ([`05_BUSINESS_RULES.md`](./05_BUSINESS_RULES.md)) |
| `ST-xxx` | Zustände und Zustandsübergänge ([`06_STATE_MODELS.md`](./06_STATE_MODELS.md)) |
| `DO-xxx` | Fachliche Datenobjekte ([`07_DATA_OBJECTS.md`](./07_DATA_OBJECTS.md)) |
| `EXC-xxx` | Ausnahmen und Eskalationen ([`08_EXCEPTIONS_ESCALATIONS.md`](./08_EXCEPTIONS_ESCALATIONS.md)) |
| `PR-xxx` | **Privacy Requirements** – Privacy-, Sicherheits- und Audit-Anforderungen ([`09_PRIVACY_SECURITY_AUDIT.md`](./09_PRIVACY_SECURITY_AUDIT.md)) |
| `NFR-xxx` | Nichtfunktionale (fachliche) Anforderungen ([`10_NON_FUNCTIONAL_REQUIREMENTS.md`](./10_NON_FUNCTIONAL_REQUIREMENTS.md)) |
| `AC-xxx` | Akzeptanzkriterien ([`11_ACCEPTANCE_CRITERIA.md`](./11_ACCEPTANCE_CRITERIA.md)) |
| `OP-xxx` | Offene Punkte und Prüfpflichten ([`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md)) |
| `GL-xxx` | Glossarbegriffe ([`01_GLOSSARY.md`](./01_GLOSSARY.md)) |

`PR` steht in diesem Dokumentensatz ausdrücklich für **Privacy Requirement** und **nicht** für «Pull Request».

**ID-Regeln:** pro ID genau eine primäre Aussage; lückenlose Nummerierung je ID-Raum; keine Dubletten; keine Wiederverwendung vergebener IDs; jede `FR`, `BR` und `AC` besitzt mindestens eine Rückverfolgung zu `D-ID` und `ADR`. Bestehende `D-`, `A-`, `Q-`, `ADR-` und Risiko-IDs (`R-`) bleiben unverändert und werden nur referenziert; Annahmen werden über bestehende `A-IDs` referenziert und nicht neu nummeriert.

## Dokumentindex

| Datei | Inhalt |
|---|---|
| [`00_PRODUCT_SPEC_V0.1.md`](./00_PRODUCT_SPEC_V0.1.md) | Dachdokument: Ziel, Scope, Nicht-Ziele, Prinzipien, Modulübersicht, Freigabestatus |
| [`01_GLOSSARY.md`](./01_GLOSSARY.md) | Begriffsdefinitionen |
| [`02_ROLES_PERMISSIONS.md`](./02_ROLES_PERMISSIONS.md) | Rollen, Berechtigungs- und Sichtbarkeitsmatrix |
| [`03_USER_JOURNEYS.md`](./03_USER_JOURNEYS.md) | Fachliche Kernabläufe |
| [`04_FUNCTIONAL_REQUIREMENTS.md`](./04_FUNCTIONAL_REQUIREMENTS.md) | Funktionale Anforderungen |
| [`05_BUSINESS_RULES.md`](./05_BUSINESS_RULES.md) | Geschäftsregeln |
| [`06_STATE_MODELS.md`](./06_STATE_MODELS.md) | Zustandsmodelle |
| [`07_DATA_OBJECTS.md`](./07_DATA_OBJECTS.md) | Fachliche Datenobjekte |
| [`08_EXCEPTIONS_ESCALATIONS.md`](./08_EXCEPTIONS_ESCALATIONS.md) | Ausnahmen und Eskalationen |
| [`09_PRIVACY_SECURITY_AUDIT.md`](./09_PRIVACY_SECURITY_AUDIT.md) | Privacy-, Sicherheits- und Audit-Anforderungen |
| [`10_NON_FUNCTIONAL_REQUIREMENTS.md`](./10_NON_FUNCTIONAL_REQUIREMENTS.md) | Nichtfunktionale (fachliche) Anforderungen |
| [`11_ACCEPTANCE_CRITERIA.md`](./11_ACCEPTANCE_CRITERIA.md) | Akzeptanzkriterien |
| [`12_TRACEABILITY_MATRIX.md`](./12_TRACEABILITY_MATRIX.md) | Bidirektionale Traceability-Matrix |
| [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md) | Offene Punkte, externe Prüfpflichten, Pilotparameter, Hypothesen |

## Änderungs- und Freigaberegeln

1. Neue Erkenntnisse, Entscheidungen oder Quellen werden **zuerst** in `docs/business/` (Register/ADRs) erfasst; erst danach wird diese Spezifikation abgeleitet angepasst.
2. Diese Spezifikation trifft **keine** Gründerentscheidung neu und ändert **keine** Datei ausserhalb `docs/product/`.
3. Notwendige Konsistenzkorrekturen ausserhalb `docs/product/` werden nur berichtet, nicht durchgeführt.
4. Version und Stand werden bei jeder Änderung im Dachdokument und in diesem README fortgeschrieben.
5. Relative Verweise werden korrekt und auflösbar gehalten.

## Was dieser Dokumentensatz ausdrücklich nicht tut

Keine Festlegung von Programmiersprache, Frontend-/Backend-Framework, nativer/Cross-Platform-Technologie, Datenbank, Hosting/Cloud, Authentifizierungs-, Payment-, SMS-, E-Mail-, Chat-, Push- oder Analytics-Anbieter, API-Struktur, Datenbankschema, Deploymentverfahren, konkreter Verschlüsselungsimplementierung, automatisierter/KI-basierter Moderation oder Systemarchitektur.
