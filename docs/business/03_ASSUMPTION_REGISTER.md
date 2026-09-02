# Annahmenregister – Frello

**Stand:** 31. August 2026 · **Version:** 0.3 (zweite Tranche 31.08.2026) · Zugehörig: [Businessplan](./01_BUSINESS_PLAN_V0.3.md) · [Offene Gründerentscheidungen](./02_OPEN_FOUNDER_DECISIONS.md) · [Quellenregister](./04_SOURCE_REGISTER.md) · [README](./README.md) · [ADR-Verzeichnis](./decisions/README.md)

Dieses Register erfasst Hypothesen und Szenarioannahmen. Am **28. August 2026** wurden mehrere frühere Annahmen durch Gründerentscheide **abgeschlossen** (Status «entschieden», mit Verweis auf die zuständige [ADR](./decisions/README.md)); ihre Historie bleibt erhalten. Der **Nachtrag vom 31.08.2026** setzt die **Pilotdauer auf 16 Wochen** (A-03, D-36, zu validieren), ersetzt die **Native-App-Schwellen** durch eine Gründer-Gesamtbewertung (A-21, D-45/D-46) und ergänzt die neuen Hypothesen **A-28** (native App vs. PWA) und **A-29** (Wartelisten-Broadcast <2 h). Die verbleibenden Kernpunkte – insbesondere **8 %/15 %** und operative Pilotannahmen – sind als präzise Resthypothesen geführt. **Keine** dieser Werte ist eine Prognose.

**Kategorien:** HYPOTHESE · SZENARIOANNAHME. **Herkunft:** Research = Deep-Research-Analyse; Prompt = Gründervorgabe; Ableitung = logische Ableitung.
**Statuswerte:** offen · **entschieden** (durch Gründerentscheid abgelöst) · **in Validierung** (beschlossen, Kennzahl im Pilot zu bestätigen).

---

## Übersicht

| ID | Aussage (Kurz) | Wert/Spanne | Unsicherheit | Zugeh. Entscheidung | Status |
|---|---|---|---|---|---|
| A-01 | Altersfokus «primär 65+, offen für alle» | 65+ Fokus, offen für alle | — | D-07 | **entschieden** (ADR-002) |
| A-02 | Pilotgebiet | Deutschschweiz, ZH/BS/BE/LU | — | D-09/10/29 | **entschieden** (ADR-002) |
| A-03 | Pilotdauer | **16 Wochen (gesetzt)** | mittel | D-29/D-36 | **Pilotparameter gesetzt; Wirksamkeit zu validieren** |
| A-04 | Anbieter je Pilotstadt | ≥5 (Schwelle) | mittel | D-29 | Schwelle entschieden; Realisierung in Validierung |
| A-05 | Termine je Pilotstadt | ≥10 kommende | mittel | D-29 | Schwelle entschieden; Realisierung in Validierung |
| A-06 | Ø Ticketpreis (Modellbeispiel) | CHF 70 (Illustration) | hoch | D-11 | offen (Illustration) |
| A-07 | Ø Gruppengrösse (Illustration) | 16 (Illustration) | hoch | D-19 | offen (Illustration) |
| A-08 | Ø Auslastung | offen (Szenariovariable) | hoch | D-29 | offen |
| A-09 | Standardprovision | 8 % | hoch | D-11 | **in Validierung** (ADR-003) |
| A-10 | Provision betreute Formate | 15 % | hoch | D-11 | **in Validierung** (ADR-003) |
| A-11 | Anteil kostenpflichtiger Events | offen (Szenariovariable) | hoch | D-12 | offen |
| A-12 | Wiederbuchungsfenster (North Star) | 60 Tage | mittel | — | offen |
| A-13 | Zahlungsbereitschaft Anbieter | 8 % bestätigen (Ref. 6/8/10) | hoch | D-11 | in Validierung |
| A-14 | Anbieterakzeptanz des Modells | positiv (Hypothese) | hoch | D-11 | offen |
| A-15 | Supportbedarf | erhöht; Rückrufservice (D-27) | mittel | D-27 | Modell entschieden; Umfang offen |
| A-16 | Wirkung Angehörigenmodus | positiv (Hypothese) | mittel | D-15 | offen (Wirkung) |
| A-17 | Bedarf nach Telefon-/Rückrufhilfe | vorhanden (Hypothese) | mittel | D-27 | offen (Umfang) |
| A-18 | Nutzen Event-Gruppenchat | positiv (Hypothese) | mittel | D-23 | offen (Wirkung) |
| A-19 | Bewertungsbereitschaft | ausreichend (Hypothese) | mittel | D-24 | offen (Wirkung) |
| A-20 | Mindestzahl öffentl. Bewertungen | 5 | — | D-24 | **entschieden** (ADR-006) |
| A-21 | Native-App-Auslösung | **keine festen Schwellen; Gründer-Gesamtbewertung** | mittel | D-28/D-45/D-46 | **Schwellen entfallen (D-45); App als Fast-Follow (D-46)** |
| A-22 | Web-zuerst senkt Frühkosten/Zeit | ja (Begründung zu D-28) | mittel | D-28/D-46 | offen (Wirkung); native App nun Fast-Follow |
| A-23 | Interviewumfang | 20–30 TN / 10–15 Anbieter | niedrig | D-29 | offen |
| A-24 | Kostenlose Inserate sichern Dichte | ja (Hypothese) | mittel | D-12 | offen (Wirkung) |
| A-25 | Differenzierung senkt Konkurrenz | ja (Hypothese) | hoch | D-07/D-16 | offen |
| A-26 | Vier-Städte-Parallelbetrieb tragfähig | operativ leistbar | hoch | D-29/D-33/D-36/D-37 | offen; **Last erhöht** (manuelle Freigabe, 16 Wochen, Fast-Follow) |
| A-27 | Dichteschwelle 5/10 genügt für Start | ausreichend für PMF-Signal | hoch | D-29 | offen (neu) |
| A-28 | Native App wesentlich einfacher als PWA für Zielgruppe | Annahme (Gründerprämisse) | hoch | D-46 | **offen (neu, 31.08.2026); im Pilot/Feldtest zu prüfen** |
| A-29 | Wartelisten-Broadcast <2 h füllt Plätze wirksam | Annahme | mittel | D-44 | **offen (neu, 31.08.2026)** |

---

## Detailliste

### A-01 · Altersfokus — **entschieden**
- **Historische Aussage (V0.1):** «Primär 65+, offen für alle» besser als harte Altersgrenze.
- **Auflösung:** Durch **D-07** entschieden (primär 65+, offen für alle Erwachsenen; eventbezogene Altersfokusse transparent). **Status:** entschieden · **ADR:** ADR-002.
- **Resthypothese:** Wirkung der Positionierung auf Wiederbuchung je Segment bleibt zu beobachten (siehe A-25).

### A-02 · Pilotgebiet — **entschieden**
- **Historische Aussage (V0.1):** Start in einer kompakten Region; Zürich als Prüf-Option.
- **Auflösung:** Durch **D-09/D-10/D-29** entschieden (Deutschschweiz, Deutsch; parallel ZH/BS/BE/LU). **Status:** entschieden · **ADR:** ADR-002.
- **Resthypothesen:** A-03 (Dauer), A-04/A-05 (Realisierung der Dichte), A-26/A-27.

### A-03 · Pilotdauer
- **Aussage:** Die Pilotdauer ist durch **D-36 (31.08.2026) auf 16 Wochen gesetzt** (zuvor Arbeitshypothese ~12 Wochen, offen). Die Eignung von 16 Wochen zur Beurteilung von Wiederbuchung, Angebotsdichte und Betriebsbelastung bleibt eine **zu validierende Pilothypothese**. **SZENARIOANNAHME · Unsicherheit:** mittel.
- **Validierung:** Pilotverlauf · **Bestätigung:** aussagekräftige Kennzahlen inkl. 60-Tage-Wiederbuchungssignal innerhalb der 16 Wochen · **Widerlegung:** zu kurz. **Status:** Pilotparameter gesetzt, Wirksamkeit zu validieren · **Entscheidung:** D-29/D-36.

### A-04 · Anbieter je Pilotstadt
- **Aussage:** Mindestschwelle **≥5 geprüfte Anbieter je Stadt** ist durch D-29 gesetzt; ob sie in allen vier Städten realisierbar ist, bleibt zu validieren. **Unsicherheit:** mittel.
- **Bestätigung:** ≥5 in jeder Stadt vor Start · **Widerlegung:** Schwelle in ≥1 Stadt nicht erreichbar. **Status:** Schwelle entschieden; Realisierung in Validierung · **Entscheidung:** D-29.

### A-05 · Termine je Pilotstadt
- **Aussage:** Mindestschwelle **≥10 kommende Termine je Stadt** (D-29); Realisierung zu validieren. **Unsicherheit:** mittel.
- **Bestätigung:** ≥10 je Stadt vor Start · **Widerlegung:** nicht erreichbar. **Status:** Schwelle entschieden; Realisierung in Validierung · **Entscheidung:** D-29.

### A-06 · Ø Ticketpreis (Illustration)
- **Aussage:** CHF 70 dient nur als Illustration der Provisionsmechanik (Businessplan §26.1), keine Preisannahme fürs Sortiment. **Unsicherheit:** hoch. **Status:** offen · **Entscheidung:** D-11.

### A-07 · Ø Gruppengrösse (Illustration)
- **Wert:** 16 (Beispiel). **Unsicherheit:** hoch · **Validierung:** Pilot. **Status:** offen · **Entscheidung:** D-19.

### A-08 · Ø Auslastung
- **Aussage:** zentrale Szenariovariable (kein Wert festgelegt). **Unsicherheit:** hoch · **Messgrösse:** belegte/angebotene Plätze. **Status:** offen · **Entscheidung:** D-29.

### A-09 · Standardprovision — **in Validierung**
- **Historische Aussage (V0.1):** Korridor ~6–10 %.
- **Auflösung:** Durch **D-11** auf **8 %** als Pilotgrundlage festgelegt (AKZEPTIERT MIT VALIDIERUNG). **Unsicherheit:** hoch.
- **Validierung:** Anbieterinterviews (Referenz 6/8/10 %) + Pilot · **Bestätigung:** 8 % breit akzeptiert bei belegtem Mehrwert · **Widerlegung:** breite Ablehnung / nötige Korrektur. **Status:** in Validierung · **ADR:** ADR-003.

### A-10 · Provision betreute Formate — **in Validierung**
- **Historische Aussage (V0.1):** Korridor ~12–20 %.
- **Auflösung:** Durch **D-11** auf **15 %** festgelegt (AKZEPTIERT MIT VALIDIERUNG); betreute Formate ändern die Vermittlerrolle nicht automatisch. **Unsicherheit:** hoch.
- **Validierung:** Pilot-Managed-Events · **Bestätigung:** 15 % trägt Mehrleistung · **Widerlegung:** unrentabel/abgelehnt. **Status:** in Validierung · **ADR:** ADR-003.

### A-11 · Anteil kostenpflichtiger Events
- **Aussage:** Mischung kostenlos/kostenpflichtig; Anteil ist Szenariovariable. **Unsicherheit:** hoch · **Status:** offen · **Entscheidung:** D-12.

### A-12 · Wiederbuchungsfenster (North Star)
- **Aussage:** Erfolg = erneute reale Buchung **und Besuch** innerhalb 60 Tagen. **Unsicherheit:** mittel · **Validierung:** Kohortenanalyse. **Status:** offen.

### A-13 · Zahlungsbereitschaft Anbieter
- **Aussage:** 8 % als beschlossene Grundlage per Interviews bestätigen (Referenzpunkte 6/8/10 %). **Unsicherheit:** hoch · **Bestätigung:** 8 % akzeptiert · **Widerlegung:** Anpassung nötig. **Status:** in Validierung · **Entscheidung:** D-11.

### A-14 · Anbieterakzeptanz des Modells
- **Aussage:** Anbieter sehen mehr als Ticketing (neue Gäste, gefüllte Gruppen). **Unsicherheit:** hoch · **Validierung:** Interviews/Pilot. **Status:** offen · **Entscheidung:** D-11.

### A-15 · Supportbedarf
- **Aussage:** Zielgruppe erzeugt erhöhten Supportbedarf; Modell ist der **Rückrufservice** (D-27), Umfang/Zeiten offen. **Unsicherheit:** mittel · **Messgrösse:** Supportfälle/Buchung. **Status:** Modell entschieden; Umfang offen · **Entscheidung:** D-27.

### A-16 · Wirkung Angehörigenmodus
- **Aussage:** Angehörigenbuchung (erlaubt per D-15) erhöht Erreichbarkeit/Teilnahme. **Unsicherheit:** mittel · **Validierung:** Pilot. **Status:** offen (Wirkung) · **Entscheidung:** D-15.

### A-17 · Bedarf nach Telefon-/Rückrufhilfe
- **Aussage:** Rückrufhilfe wird benötigt; konkreter Umfang offen. **Unsicherheit:** mittel · **Validierung:** Pilot/Interviews. **Status:** offen (Umfang) · **Entscheidung:** D-27.

### A-18 · Nutzen Event-Gruppenchat
- **Aussage:** Der (per D-23 beschlossene) moderierte Gruppenchat fördert Anreise/Teilnahme. **Unsicherheit:** mittel · **Messgrösse:** Chatnutzung vs. No-show. **Status:** offen (Wirkung) · **Entscheidung:** D-23.

### A-19 · Bewertungsbereitschaft
- **Aussage:** Teilnehmende geben kurzes Feedback (<1 Min). **Unsicherheit:** mittel · **Messgrösse:** Feedbackquote. **Status:** offen · **Entscheidung:** D-24.

### A-20 · Mindestzahl öffentlicher Bewertungen — **entschieden**
- **Historische Aussage (V0.1):** «ab fünf» als Hypothese.
- **Auflösung:** Durch **D-24** entschieden (ab fünf bestätigten Bewertungen, Anzahl sichtbar). **Status:** entschieden · **ADR:** ADR-006.

### A-21 · Native-App-Auslösung
- **Aussage:** **Aktualisiert (31.08.2026):** Es gibt **keine festen Kennzahlenschwellen** mehr (frühere Annahme «Wiederbuchung + mobile Nutzung + App-/Push-Bedarf» als Trigger ist durch **D-45** ersetzt). Start/Ausbau nativer Apps erfolgt per **Gesamtbewertung des Gründers** mit separater Freigabe; die native App wird als **Fast-Follow** vorbereitet (D-46). **Unsicherheit:** mittel · **Validierung:** Pilotdaten/Nutzerfeedback als Grundlage (nicht als Automatismus). **Status:** keine festen Schwellen; Startentscheid offen · **Entscheidung:** D-28/D-45/D-46.

### A-22 · Web-zuerst senkt Frühkosten/Zeit
- **Aussage:** Begründung zu D-28; Kosten- und Zeitvorteil real. **Aktualisierung (31.08.2026):** Web/PWA bleibt MVP-Launch (installierbare PWA verbindlich), die native App folgt als Fast-Follow (D-46) – der Frühkosten-/Zeitvorteil des Web-Starts bleibt die Begründung. **Unsicherheit:** mittel · **Validierung:** Umsetzung. **Status:** offen (Wirkung) · **Entscheidung:** D-28/D-46.

### A-23 · Interviewumfang
- **Wert:** 20–30 Teilnehmende, 10–15 Anbieter. **Unsicherheit:** niedrig · **Validierung:** Durchführung. **Status:** offen · **Entscheidung:** D-29.

### A-24 · Kostenlose Inserate sichern Dichte
- **Aussage:** Kostenlose Inserate (D-12) sichern Angebotsdichte. **Unsicherheit:** mittel · **Validierung:** Pilot. **Status:** offen (Wirkung) · **Entscheidung:** D-12.

### A-25 · Differenzierung senkt Konkurrenzintensität
- **Aussage:** Kombination aus Kuratierung, verbindlicher Buchung, Kleingruppen, Vertrauen und Zugänglichkeit senkt die effektive Konkurrenzintensität. **Unsicherheit:** hoch · **Validierung:** Markt-/Pilotbeobachtung. **Status:** offen · **Entscheidung:** D-07/D-16.

### A-26 · Vier-Städte-Parallelbetrieb tragfähig *(neu, 28.08.2026; verschärft 31.08.2026)*
- **Aussage:** Der parallele Pilot in vier Deutschschweizer Städten (D-29) ist operativ (Akquise, Support, Moderation) mit den geplanten Ressourcen leistbar. **Verschärfung (31.08.2026):** Die Last steigt durch die **vollständige manuelle Freigabe jedes Events (D-33)**, die **16-wöchige** Messdauer (D-36), den **gemeinsamen Start** (D-37, alle Städte gleichzeitig) und die **parallele Native-App-Fast-Follow-Vorbereitung** (D-46). **Unsicherheit:** hoch.
- **Validierung:** Pilotbetrieb · **Bestätigung:** alle vier Städte erreichen Betriebsfähigkeit ohne Qualitätsverlust · **Widerlegung:** Überlastung/Qualitätseinbruch. **Status:** offen · **Entscheidung:** D-29 (mit D-33/D-36/D-37/D-46).

### A-27 · Dichteschwelle 5/10 genügt für Start *(neu, 28.08.2026)*
- **Aussage:** ≥5 Anbieter und ≥10 kommende Termine je Stadt (D-29) genügen, um einen tragfähigen öffentlichen Start und ein belastbares Nachfrage-/Wiederbuchungssignal zu erzeugen. **Unsicherheit:** hoch.
- **Validierung:** Pilot · **Bestätigung:** Start bei Schwelle erzeugt Buchungen/Wiederbuchung · **Widerlegung:** Schwelle zu tief für tragfähigen Betrieb. **Status:** offen · **Entscheidung:** D-29.

### A-28 · Native App wesentlich einfacher als PWA für die Zielgruppe *(neu, 31.08.2026)*
- **Aussage:** Die Gründerprämisse zu **D-46**, dass eine native App für ältere Personen **wesentlich einfacher** zu nutzen ist als eine installierbare PWA, ist eine Annahme und **keine** belegte Tatsache. **Unsicherheit:** hoch.
- **Validierung:** Nutzer-/Feldtests mit der Zielgruppe (PWA vs. native App) · **Bestätigung:** messbar bessere Nutzbarkeit/Adoption der nativen App · **Widerlegung:** kein relevanter Unterschied zur installierten PWA. **Status:** offen · **Entscheidung:** D-45/D-46 (Startentscheid per Gründer-Gesamtbewertung).

### A-29 · Wartelisten-Broadcast <2 h füllt Plätze wirksam *(neu, 31.08.2026)*
- **Aussage:** Der Broadcast an alle Wartenden im <2-h-Sonderfall (**D-44**) füllt frei werdende Plätze wirksam, ohne die Zielgruppe zu verwirren. **Unsicherheit:** mittel.
- **Validierung:** Pilot · **Bestätigung:** Plätze werden kurzfristig gefüllt, geringe Beschwerde-/Verwirrungsquote · **Widerlegung:** Verwirrung/Frust oder geringe Füllquote. **Status:** offen · **Entscheidung:** D-44.

---

## Nutzungshinweis für Finanzszenarien

Für die Szenarien **konservativ / Basis / ambitioniert** (Businessplan §26) werden A-04 bis A-11 sowie A-13 als Eingabevariablen verwendet – mit den nun beschlossenen Ankerwerten **8 % Standard / 15 % betreut** (in Validierung) und den Dichteschwellen (≥5 Anbieter, ≥10 Termine je Stadt). Jede Szenariozahl ist mit Wert, Herkunft und Unsicherheit auszuweisen; das Zahlenbeispiel in §26.1 ist ausdrücklich **keine** Prognose, sondern Illustration.
