# Frello – Business-Dokumentation

Dieser Ordner enthält die konsolidierte Business-, Markt- und Produktgrundlage für **Frello**, eine geplante Schweizer Internetplattform (mit späterer App) zum gemeinsamen Entdecken, verbindlichen Buchen und gemeinsamen Besuchen von Freizeitaktivitäten und Veranstaltungen. Primärer Fokus sind Pensionierte und ältere Menschen; die Plattform soll grundsätzlich für alle erwachsenen Personen zugänglich bleiben.

> **Frello ist der vom Gründer gewählte Arbeits- und Produktname.** Die Dokumente in diesem Ordner beschreiben ausschliesslich Business-, Markt- und Produktgrundlagen. Sie enthalten **keinen Anwendungscode**, keine technische Implementierung und keine verbindliche Rechts-, Steuer- oder Finanzberatung.

## Zweck der Dokumente

| Datei | Zweck |
|---|---|
| [`01_BUSINESS_PLAN_V0.2.md`](./01_BUSINESS_PLAN_V0.2.md) | Vollständige, konsolidierte Businesskonzeption (Version 0.2). |
| [`02_OPEN_FOUNDER_DECISIONS.md`](./02_OPEN_FOUNDER_DECISIONS.md) | Register aller materiellen Entscheidungen (D-01…D-30) mit Status, Gründerentscheid, Datum und ADR-Verweis. |
| [`03_ASSUMPTION_REGISTER.md`](./03_ASSUMPTION_REGISTER.md) | Sämtliche Hypothesen und Szenarioannahmen mit Validierungsplan. |
| [`04_SOURCE_REGISTER.md`](./04_SOURCE_REGISTER.md) | Alle verwendeten externen Quellen mit Titel, Herausgeber, Datum, URL, Abrufdatum, Aussage, Relevanz, Einschränkung und Verifizierungsstatus. |
| [`decisions/`](./decisions/README.md) | Thematische Decision Records (ADR-001…ADR-007) mit dem Nachweis der am 28.08.2026 konsolidierten Gründerentscheide. Jede D-ID verweist auf genau eine ADR. |

Ergänzende Grundlage: [`../research/Senioren_Erlebnisplattform_Deep_Research.md`](../research/Senioren_Erlebnisplattform_Deep_Research.md) (Deep-Research-Markt- und Produktanalyse, Stand 28.08.2026).

## Dokumentstatus

- **Version:** 0.2 (konsolidierte Gründerentscheide vom 28.08.2026 eingearbeitet)
- **Stand:** 28. August 2026
- **Status:** Arbeitsdokument zur Gründerprüfung. Nicht freigegeben, nicht investorenfinal.
- **Geltungsbereich:** Schweiz als Startmarkt; Deutschland als mögliche spätere Expansion.
- **Versionshistorie:** V0.1 = Erstentwurf (alle Kernparameter offen). V0.2 = Einarbeitung des konsolidierten Gründerentscheids (Marke/Domain-Prozess, Deutschschweiz-Pilot in vier Städten, Vermittlerrolle, 8 %/15 %-Pilotgrundlage, Buchungs-/Storno-/Chat-/Profil-/Bewertungsregeln, Web-first). Der Businessplan wurde entsprechend von `V0.1` auf `V0.2` umbenannt.

## Governance – Kategorien jeder wesentlichen Aussage

Jede wesentliche Aussage ist einer dieser Kategorien zugeordnet und im gesamten Dokumentensatz konsistent gekennzeichnet:

| Kennzeichen | Bedeutung |
|---|---|
| **[BESCHLOSSEN]** | Vom Gründer ausdrücklich festgelegt oder durch verbindliche Repo-Dokumente beschlossen. |
| **[HYPOTHESE]** | Begründete Annahme, die durch Interviews, Marktdaten, Pilot oder reale Nutzung validiert werden muss. |
| **[OFFEN]** | Entscheidung, die der Gründer treffen muss. |
| **[EXTERN ZU PRÜFEN]** | Rechtlicher, steuerlicher, regulatorischer, versicherungsbezogener oder fachlicher Punkt, der vor Umsetzung durch eine qualifizierte Fachperson geprüft werden muss. |
| **[MARKTERKENNTNIS]** | Durch eine nachvollziehbare Quelle belegte Markt-, Wettbewerbs- oder Zielgruppenaussage; keine interne Unternehmensentscheidung. |

**Grundregel:** Eine Hypothese wird nicht durch Wiederholung zum Beschluss. Was in diesem Ordner nicht als **[BESCHLOSSEN]** gekennzeichnet ist, ist nicht beschlossen.

### Decision-Status (für Entscheidungsregister und ADRs)

Zusätzlich zu den obigen Governance-Kategorien (die den *Aussagen* im Businessplan zugeordnet sind) verwenden das [Entscheidungsregister](./02_OPEN_FOUNDER_DECISIONS.md) und die [ADRs](./decisions/README.md) ein **Decision-Status-Modell** für den Reifegrad jeder Entscheidung:

| Status | Bedeutung |
|---|---|
| **AKZEPTIERT** | Gründerentscheid vollständig getroffen. |
| **AKZEPTIERT MIT VALIDIERUNG** | Grundrichtung beschlossen; Kennzahl/Satz im Pilot zu validieren. |
| **TEILWEISE AKZEPTIERT** | Hauptentscheid getroffen; benannte Unterpunkte bleiben offen. |
| **ZURÜCKGESTELLT** | Bewusst an einen späteren Trigger gebunden. |
| **NICHT ANWENDBAR FÜR DEN MVP / ZURÜCKGESTELLT** | Fragestellung ist für den aktuellen MVP nicht anwendbar und bleibt zurückgestellt; Reaktivierung nur, wenn die dafür definierte spätere Voraussetzung eintritt (z. B. D-04: nur falls später eine separate juristische Person mit «Frello» im Firmennamen geplant wird). |
| **AUSSTEHENDE UMSETZUNG** | Entscheid getroffen; externe Handlung (z. B. Registrar-Nachweis) noch nicht belegt. |
| **EXTERN ZU PRÜFEN** | Fachliche Bestätigung ausstehend. |
| **OFFEN** | Keine Gründerfreigabe. |

Mapping: Eine im Register **AKZEPTIERTE** Entscheidung erscheint im Businessplan als **[BESCHLOSSEN]**; **AKZEPTIERT MIT VALIDIERUNG** als **[BESCHLOSSEN]** mit ausdrücklichem Validierungshinweis; **EXTERN ZU PRÜFEN** bleibt in beiden Modellen **[EXTERN ZU PRÜFEN]**.

## Source-of-Truth-Reihenfolge

Bei Widersprüchen gilt (höchste Priorität zuerst):

1. Direkte Anweisung des Gründers (bzw. des aktuellen Auftrags).
2. Ausdrücklich akzeptierte Gründerentscheide im Repository.
3. Bestehende verbindliche Projektverfassung.
4. Akzeptierte ADRs.
5. Freigegebene Produkt- und Businessdokumente.
6. Research-Dokumente (z. B. `docs/research/`).
7. Vorgeschlagene oder noch offene ADRs.
8. Hypothesen.
9. Unverbindliche Notizen.

Sind zwei gleichrangige Quellen widersprüchlich, wird **nicht** eigenmächtig entschieden; der Konflikt wird in [`02_OPEN_FOUNDER_DECISIONS.md`](./02_OPEN_FOUNDER_DECISIONS.md) dokumentiert und im Businessplan neutral formuliert.

## Verhältnis zwischen den Dokumenten

- Der **Businessplan** ist die konsolidierte Erzählung. Er verweist für jede offene Frage auf das **Entscheidungsregister** und für jede Zahl/Annahme auf das **Annahmenregister**.
- Das **Entscheidungsregister** führt jede Entscheidung (D-01…D-30) mit Decision-Status und verweist für den Nachweis auf die zuständige **ADR** in [`decisions/`](./decisions/README.md); der Businessplan trifft diese Entscheidungen nicht.
- Die **ADRs** (`decisions/ADR-001…ADR-007`) sind der thematisch gebündelte Nachweis der Gründerentscheide. Jede D-ID ist genau einer ADR zugeordnet (Mapping im [ADR-Index](./decisions/README.md)).
- Das **Annahmenregister** hält jede verwendete Zahl, jeden Wertebereich und jede Hypothese fest – inklusive Validierungsmethode und Bestätigungs-/Widerlegungskriterium.
- Das **Quellenregister** belegt jede externe Markterkenntnis.

## Aktualisierungsprozess

1. Neue Erkenntnis, Entscheidung oder Quelle zuerst im passenden **Register** erfassen (Entscheidungen → 02, Annahmen → 03, Quellen → 04).
2. Erst danach den **Businessplan** entsprechend anpassen und die Kategorie-Kennzeichnung aktualisieren.
3. Gründerentscheide im Entscheidungsregister mit Datum und Nachweis/ADR-Link eintragen und die betroffenen Stellen im Businessplan von **[OFFEN]/[HYPOTHESE]** auf **[BESCHLOSSEN]** umstellen.
4. Version und Stand oben in diesem README sowie im Businessplan-Kopf hochzählen.
5. Verweise relativ und korrekt halten.

## Ausdrückliche Nicht-Ziele dieses Dokumentensatzes

Kein Anwendungscode, keine Website, keine App, keine technische Implementierung, keine Datenbank, keine Abhängigkeiten, kein Hosting, keine Zahlungsdienste, keine Domainregistrierung, keine Markenanmeldung, kein Logo, keine visuelle Markenentwicklung, keine Kontaktaufnahme mit Unternehmen oder Behörden, kein Deployment.
