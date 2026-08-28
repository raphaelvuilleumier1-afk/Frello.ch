# Frello – Business-Dokumentation

Dieser Ordner enthält die konsolidierte Business-, Markt- und Produktgrundlage für **Frello**, eine geplante Schweizer Internetplattform (mit späterer App) zum gemeinsamen Entdecken, verbindlichen Buchen und gemeinsamen Besuchen von Freizeitaktivitäten und Veranstaltungen. Primärer Fokus sind Pensionierte und ältere Menschen; die Plattform soll grundsätzlich für alle erwachsenen Personen zugänglich bleiben.

> **Frello ist der vom Gründer gewählte Arbeits- und Produktname.** Die Dokumente in diesem Ordner beschreiben ausschliesslich Business-, Markt- und Produktgrundlagen. Sie enthalten **keinen Anwendungscode**, keine technische Implementierung und keine verbindliche Rechts-, Steuer- oder Finanzberatung.

## Zweck der Dokumente

| Datei | Zweck |
|---|---|
| [`01_BUSINESS_PLAN_V0.1.md`](./01_BUSINESS_PLAN_V0.1.md) | Vollständige, konsolidierte Businesskonzeption (Version 0.1). |
| [`02_OPEN_FOUNDER_DECISIONS.md`](./02_OPEN_FOUNDER_DECISIONS.md) | Priorisiertes Register aller materiellen Entscheidungen, die der Gründer treffen muss. |
| [`03_ASSUMPTION_REGISTER.md`](./03_ASSUMPTION_REGISTER.md) | Sämtliche Hypothesen und Szenarioannahmen mit Validierungsplan. |
| [`04_SOURCE_REGISTER.md`](./04_SOURCE_REGISTER.md) | Alle verwendeten externen Quellen mit Titel, Herausgeber, Datum, URL, Abrufdatum, Aussage, Relevanz, Einschränkung und Verifizierungsstatus. |

Ergänzende Grundlage: [`../research/Senioren_Erlebnisplattform_Deep_Research.md`](../research/Senioren_Erlebnisplattform_Deep_Research.md) (Deep-Research-Markt- und Produktanalyse, Stand 28.08.2026).

## Dokumentstatus

- **Version:** 0.1 (Erstentwurf)
- **Stand:** 28. August 2026
- **Status:** Arbeitsdokument zur Gründerprüfung. Nicht freigegeben, nicht investorenfinal.
- **Geltungsbereich:** Schweiz als Startmarkt; Deutschland als mögliche spätere Expansion.

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
- Das **Entscheidungsregister** ist die verbindliche Liste dessen, was der Gründer entscheiden muss; der Businessplan trifft diese Entscheidungen nicht.
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
