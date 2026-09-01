# ADR-004 – Buchung, Zahlung, Storno, Mindestzahl, Warteliste und No-shows

- **Status:** AKZEPTIERT · D-17 TEILWEISE AKZEPTIERT · D-40/D-42/D-43 Details bzw. Recht offen · Detailregelungen EXTERN ZU PRÜFEN
- **Datum:** 28. August 2026 · **Ergänzt:** 31. August 2026 (D-40, D-41, D-42, D-43, D-44)
- **Betroffene D-IDs:** D-17, D-18, D-19 (inkl. No-show-Unterentscheid), D-40, D-41, D-42, D-43, D-44
- **Zugehörig:** [Businessplan §16](../01_BUSINESS_PLAN_V0.3.md#16-buchung-und-warteliste) · [Businessplan §30](../01_BUSINESS_PLAN_V0.3.md#30-datenschutz-recht-und-compliance) · [Entscheidungsregister](../02_OPEN_FOUNDER_DECISIONS.md)

## Kontext

Zahlungsarten, Stornoregeln, Durchführungs-/Nachrückfristen und der No-show-Umgang waren offen. Der Gründer hat verbindliche Rahmenregeln festgelegt; rechtliche Detailformulierungen und der regulierte Zahlungsfluss bleiben fachlich auszugestalten.

## Entscheidung

- **D-17:** Je Event sind **Online-Zahlung und Zahlung vor Ort** möglich. **Provisionsabrechnung bei Zahlung vor Ort** und der **regulierte Zahlungsfluss** sind noch fachlich auszugestalten. **Status TEILWEISE AKZEPTIERT · EXTERN ZU PRÜFEN.**
- **D-18:** Anbieter wählen **eines von drei durch Frello definierten Stornomodellen**; freie eigene Klauseln sind **nicht** erlaubt. **Status AKZEPTIERT · Detail EXTERN ZU PRÜFEN.**
  1. **Flexibel:** kostenlose Stornierung bis **24 Stunden** vor Beginn.
  2. **Standard:** kostenlose Stornierung bis **sieben Tage** vor Beginn; **50 % Rückerstattung bis 48 Stunden** vor Beginn.
  3. **Fix:** grundsätzlich **keine reguläre Rückerstattung**.
  Ausnahmen, Gebührenanteile, Ersatzpersonen und juristische Formulierungen bleiben extern zu prüfen.
- **D-19:** Spätester **Durchführungsentscheid** bei lokalen Einzelveranstaltungen grundsätzlich **48 Stunden** vor Beginn. Reguläres **Nachrückangebot: zwölf Stunden**. Beginnt das Event in **weniger als 24 Stunden**, gilt eine **zweistündige** Nachrückfrist. **Status AKZEPTIERT.**
- **No-show-Unterentscheid:** Beim **ersten** Nichterscheinen ohne Absage **Hinweis**; bei **Wiederholung** zeitweise **Buchungsbegrenzung mit Einsprachemöglichkeit**. **Keine automatische Geldstrafe.** **Status AKZEPTIERT.**

### Ergänzungen vom 31.08.2026 (D-40 bis D-44)

- **D-40 (Buchungsübertragung):** Eine buchende Person kann ihre Buchung **bis 24 Stunden vor Beginn selbstständig** an eine andere Person übertragen. Der **Empfänger** muss ein Frello-Konto besitzen, die **Telefonverifikation (D-26)** abgeschlossen haben und die Teilnahmebedingungen erfüllen. **Unter 24 Stunden** nur über den **Frello-Support**. Die **Platzanzahl bleibt unverändert**; **Teilnahme-, Check-in- und Bewertungsberechtigung** gehen auf die tatsächlich teilnehmende Person über; die Übertragung wird **protokolliert**. Der **Angehörigenmodus (D-15)** bleibt ein eigener Buchungsweg. **Status AKZEPTIERT IM GRUNDSATZ · Details OFFEN · EXTERN ZU PRÜFEN** (revDSG/Einwilligung).
- **D-41 (Keine Teilzahlungen im MVP):** Online-Buchungen werden im MVP **vollständig** bezahlt; **Teil-/Ratenzahlungen ausgeschlossen**; späteres Modell zurückgestellt. Trifft **keine** Aussage zur rechtlichen/technischen Ausgestaltung des Zahlungsflusses (D-17). **Status AKZEPTIERT FÜR DEN MVP.**
- **D-42 (Absage durch Anbieter, inkl. Wetter/kurzfristig):** Bei Online-Zahlung **garantierte volle Rückerstattung** als **Standard**; ein **Ersatztermin/Umbuchung darf zusätzlich** angeboten werden; die teilnehmende Person hat das **Wahlrecht** und muss keine Umbuchung akzeptieren. **Kein** rechtlich bestätigter Klauseltext. **Status AKZEPTIERT IM FACHLICHEN GRUNDSATZ · EXTERN ZU PRÜFEN.**
- **D-43 (Ausfall einer zentralen Leistung):** Fachliche Behandlung **wie D-42**; volle Rückerstattung bleibt Standard; optionale Umbuchung mit Wahlrecht; **aktive Information** der Betroffenen über verfügbare Frello-Kanäle (die technische Kanalwahl – z. B. «Push» – folgt später); **Audit-Dokumentation**; wiederholte Ausfälle = internes Qualitätssignal. **Status AKZEPTIERT IM FACHLICHEN GRUNDSATZ · EXTERN ZU PRÜFEN.**
- **D-44 (Wartelisten-Sonderfall <2 h):** **Nur** wenn **<2 h** bis Beginn ein Platz frei wird: **Broadcast an alle berechtigten Wartenden**, die **erste vollständig bestätigte digitale Zusage** (bis Eventbeginn) erhält den Platz; übrige werden informiert; sagt niemand digital zu, bleibt der Platz **frei**; **keine spontane Vor-Ort-Vergabe** an unverifizierte/nicht digital eingebuchte Personen. **D-20 und D-26 gelten ohne Ausnahme.** Die reguläre Reihenfolge-/Fristenlogik von **D-19 bleibt außerhalb dieses Sonderfalls unverändert**. Ein **genereller** Broadcast (auch regulär) bleibt **offen**. **Status AKZEPTIERT.**

## Begründung

Drei standardisierte Stornomodelle schaffen Klarheit und Vergleichbarkeit für eine teils verletzliche Zielgruppe und begrenzen rechtliche Uneinheitlichkeit. Definierte Durchführungs-/Nachrückfristen stabilisieren das Mindestteilnehmermodell. Der No-show-Umgang ist verhältnismässig (Hinweis vor Sanktion, keine automatische Strafe).

## Konsequenzen

- Businessplan ersetzt die offenen Storno-/Fristen-Platzhalter durch die beschlossenen Regeln.
- Anbieter können keine freien Stornoklauseln setzen.
- Vor-Ort-Zahlung erfordert eine noch auszugestaltende Provisionsabrechnung.

## Risiken

- Rückerstattungs-/Chargeback-Probleme (R-15). Gegenmassnahme: klare Regeln, Marketplace-Payment.
- No-shows destabilisieren Mindestzahlmodell (R-13). Gegenmassnahme: Erinnerungen, Fristen, Warteliste, Buchungsbegrenzung bei Wiederholung.
- Konsumentenschutz-/Vertragsrecht bei Storno/Rückerstattung (R-15/R-16).

## Offen bleibende Unterpunkte

- Provisionsabrechnung bei Vor-Ort-Zahlung; regulierter Zahlungsfluss (D-17).
- Ausnahmen, Gebührenanteile, Ersatzpersonen, juristische Formulierung der Stornomodelle (D-18).
- Anzeige-/Bestätigungsschritte, Check-in-Guardrails, Missbrauchs-/Häufigkeitsgrenzen der Buchungsübertragung (D-40).
- Genereller Warteliste-Broadcast auch für reguläre Situationen (D-44).
- Späteres Teilzahlungsmodell (D-41).

## Externe Prüfpflichten

- Zahlungsfluss/Kundengelder, FINMA-Relevanz, Payment-Provider (D-17) – siehe [Businessplan §30](../01_BUSINESS_PLAN_V0.3.md#30-datenschutz-recht-und-compliance).
- Konsumentenschutz-/Vertragsrecht der Stornomodelle (D-18).
- revDSG und Einwilligung bei der Übertragung personenbezogener Buchungsdaten (D-40).
- Konsumentenschutz, Vertragsrecht, Zahlungs-/Erstattungsprozess, rechtliche Formulierung und Abgrenzung höherer Gewalt bei Anbieterabsage/Leistungsausfall (D-42/D-43).

## Änderungshistorie

- **28.08.2026:** D-17, D-18, D-19 (inkl. No-show) beschlossen.
- **31.08.2026:** D-40 (Buchungsübertragung), D-41 (keine Teilzahlungen im MVP), D-42 (Anbieterabsage), D-43 (Leistungsausfall) und D-44 (Wartelisten-Sonderfall <2 h) ergänzt. D-44 ist eine ausdrücklich begrenzte Ausnahme von der sequentiellen Wartelistenreihenfolge (§16), **nicht** von D-20/D-26; die Fristen von D-18/D-19 bleiben unverändert.

## Nachweis

Konsolidierte Gründerfreigabe (28.08.2026); strukturierte interaktive Gründerklärung (31.08.2026, Entscheidungsblöcke 5) für D-40 bis D-44.
