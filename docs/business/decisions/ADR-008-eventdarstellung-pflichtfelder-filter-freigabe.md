# ADR-008 – Eventdarstellung, Pflichtfelder, MVP-Filter und Freigabeworkflow

- **Status:** AKZEPTIERT (D-31, D-32, D-33)
- **Datum:** 31. August 2026
- **Betroffene D-IDs:** D-31, D-32, D-33
- **Zugehörig:** [Businessplan §12](../01_BUSINESS_PLAN_V0.3.md#12-produkt--und-leistungsangebot) · [Businessplan §13](../01_BUSINESS_PLAN_V0.3.md#13-zentrale-nutzerabläufe) · [Businessplan §16](../01_BUSINESS_PLAN_V0.3.md#16-buchung-und-warteliste) · [Businessplan §31](../01_BUSINESS_PLAN_V0.3.md#31-betrieb-und-organisation) · [Entscheidungsregister](../02_OPEN_FOUNDER_DECISIONS.md) · [Annahmenregister](../03_ASSUMPTION_REGISTER.md) · [ADR-004](./ADR-004-buchung-zahlung-storno-warteliste.md)

## Kontext

Businessplan §16 nannte die Eventdarstellung mit einem Katalog möglicher Felder, ließ aber die **Pflichtfelder** ausdrücklich **[OFFEN]**; die im MVP verbindlichen **Filter** und der **Veröffentlichungsworkflow** waren ebenfalls nicht als Gründerentscheid festgelegt. Der Gründer hat diese drei Punkte am 31.08.2026 für den MVP entschieden. Kein bestehender ADR deckt diesen Sachbereich (Eventdarstellung, Auffindbarkeit, Freigabe) fachlich sauber ab, daher diese neue ADR-008.

Es werden **keine** technischen Datenbankfelder, API-Schemas oder UI-Implementierungen beschlossen; die Entscheide sind rein fachlich.

## Entscheidung

### D-31 – Pflichtfelder für Veranstaltungen (AKZEPTIERT)

**Immer verpflichtende Kernfelder:** Titel; verständliche Kurzbeschreibung; Kategorie; Datum; Beginn; Ende; Veranstaltungsort; vollständige Adresse; Stadt bzw. Region; Preis; Zahlungsart; Mindestteilnehmerzahl; Höchstteilnehmerzahl; Buchungsschluss; gewähltes Stornomodell; Zeitpunkt des Durchführungsentscheids; Sprache; verantwortlicher geprüfter Anbieter; Kontaktmöglichkeit; Zugänglichkeitsangaben; Kennzeichnung «Alleine willkommen».

**Bedingt verpflichtend (wenn für das konkrete Angebot relevant):** körperliches Aktivitätsniveau; erforderliche Ausrüstung; Verpflegung; transparenter Altersfokus; Kennzeichnung externer Buchung; Qualifikationsnachweis bei Gesundheits-, Bewegungs- oder vergleichbar sensiblen Angeboten.

**Freiwillig im MVP:** ÖV-Informationen; Parkmöglichkeiten; Veranstaltungsbild.

**Wechselwirkung mit D-39:** Externe Buchungen sind im MVP ausgeschlossen ([ADR-003](./ADR-003-betreiberin-anbieter-rolle-monetarisierung.md), D-39); das Feld **Kennzeichnung externer Buchung** ist daher für den MVP **inaktiv/nicht anwendbar** und wird erst bei einer späteren Reaktivierung externer Buchungen relevant.

### D-32 – Pflichtfilter im MVP (AKZEPTIERT FÜR DEN MVP)

**Verbindliche MVP-Filter:** Stadt bzw. Region; Datum bzw. Zeitraum; Kategorie; Preis; kostenlos; Zugänglichkeit; Aktivitätsniveau; «Alleine willkommen»; verfügbare Plätze.

**Später vorgemerkt (nicht Bestandteil des verbindlichen MVP-Filtersets, zurückgestellt):** Sprache; ÖV-Erreichbarkeit; Verpflegung; Altersfokus. Diese sind als offener Ausbaupunkt dokumentiert, **nicht** als implementierte MVP-Anforderung.

### D-33 – Manuelle Frello-Freigabe jedes Events (AKZEPTIERT)

- Kein Event wird automatisch veröffentlicht.
- Jedes Event beginnt als **Entwurf**.
- Vor Veröffentlichung erfolgt eine **vollständige manuelle Prüfung durch Frello** mit mindestens den Ergebnissen **freigegeben / abgelehnt / zur Überarbeitung zurückgegeben**.
- Fehlende oder unklare Pflichtangaben (D-31) verhindern die Veröffentlichung.
- D-33 verschärft und konkretisiert die bestehende Kuratierungs-/Prüfpflicht (Businessplan §31).
- D-33 **autorisiert keine** automatisierte oder KI-basierte Freigabe.

## Begründung

Ein klar definierter Pflichtfeldsatz sichert für eine teils verletzliche, oft ältere Zielgruppe verlässliche Entscheidungsgrundlagen (Preis, Ort, Zugänglichkeit, «Alleine willkommen»), ohne die Anbieterhürde durch zu viele Pflichtfelder unnötig zu erhöhen (Gegenmaßnahme zu R-04). Ein überschaubares MVP-Filterset hält die Oberfläche für die Zielgruppe einfach; weitere Filter bleiben als Ausbaupunkt vorgemerkt. Die vollständige manuelle Freigabe jedes Events ist konsistent mit dem Concierge-/Kuratierungsmodell (§28/§31) und stärkt Vertrauen und Qualität im Pilot.

## Konsequenzen

- Businessplan §16 ersetzt den Platzhalter «Pflichtfelder [OFFEN]» durch den beschlossenen Pflichtfeldsatz (D-31).
- Businessplan §13/§16 nennt das verbindliche MVP-Filterset (D-32); weitere Filter sind ausdrücklich zurückgestellt.
- Der Veröffentlichungsprozess (§31) wird als Entwurf-→-Prüfung-→-Freigabe-Workflow verbindlich (D-33).
- **Erhöhte operative Last:** Vollständige manuelle Freigabe jedes Events verschärft die zu validierende Hypothese A-26 (Vier-Städte-Parallelbetrieb operativ leistbar) und R-07.

## Risiken

- Zu hohe Anbieterhürde durch Pflichtfelder (R-04). Gegenmaßnahme: bedingte/freiwillige Felder klar getrennt.
- Manuelle Freigabelast bei vier Städten parallel (R-07, A-26). Gegenmaßnahme: einheitliche Vorlagen, spätere Teilautomatisierung (nicht MVP; keine KI-Freigabe).

## Offen bleibende Unterpunkte

- Spätere MVP-fremde Filter (Sprache, ÖV, Verpflegung, Altersfokus) – Ausbaupunkt.
- Konkrete Pflichtfeld-Ausprägungen je Kategorie (Detail der Spezifikation V0.1).
- Übergang von vollständiger manueller Freigabe zu «nur kritische Fälle» bei späterer Skalierung (nicht MVP).

## Externe Prüfpflichten

- Preisbekanntgabe/Konsumentenschutz im Zusammenhang mit den Pflichtfeldern (Preis, Storno, Zahlungsart) – im Rahmen der bestehenden Prüfpflichten zu §30 und D-17/D-18. ADR-008 stellt hierzu **keine** rechtliche Bewertung als erledigt dar.

## Nachweis

Strukturierte interaktive Gründerklärung (31.08.2026); Entscheidungsblock 1.
