# ADR-007 – Web-first, Native-App-Trigger und Deutschland-Trigger

- **Status:** AKZEPTIERT (D-28, D-30, D-45) · **D-28 durch D-46 geändert (31.08.2026)** · operative Deutschland-Expansion zurückgestellt bis zur Erfüllung der beschlossenen Schweizer Kriterien
- **Datum:** 28. August 2026 · **Geändert/ergänzt:** 31. August 2026 (D-45, D-46)
- **Betroffene D-IDs:** D-28, D-30, D-45, D-46
- **Zugehörig:** [Businessplan §32](../01_BUSINESS_PLAN_V0.3.md#32-technisches-grobkonzept) · [Businessplan §35](../01_BUSINESS_PLAN_V0.3.md#35-bedingungen-für-deutschland-mögliche-spätere-expansion) · [Entscheidungsregister](../02_OPEN_FOUNDER_DECISIONS.md)

## Kontext

Technische Reihenfolge (Web vs. native App) und der Auslöser einer Deutschland-Expansion waren offen. Der Gründer hat beides an belegte Kennzahlen statt an Kalendertermine gebunden.

## Entscheidung

- **D-28 (28.08.2026, durch D-46 geändert):** **Responsive Webplattform bzw. PWA zuerst.** Ursprünglich: native iOS-/Android-Apps **erst bei belegter Wiederbuchung, regelmässiger mobiler Nutzung und erkennbarem App-/Push-Bedarf**, kein kalenderbasierter Automatismus. **Diese Bindung ausschließlich an spätere Kennzahlenschwellen ist durch D-46 (31.08.2026) geändert** – siehe unten. **Status AKZEPTIERT · geändert durch D-46.**
- **D-45 (Entscheidung über Native-App-Auslösung, 31.08.2026):** Es werden **keine** festen automatischen Kennzahlenschwellen definiert. Start bzw. Ausbau nativer Apps erfolgt durch eine **Gesamtbewertung des Gründers**; jede native Umsetzung benötigt eine **separate ausdrückliche Freigabe**. Pilotdaten/Nutzerfeedback sind Entscheidungsgrundlage, lösen aber **keine automatische Entwicklung** aus. Aktualisiert A-21 (keine festen Schwellen mehr). **Status AKZEPTIERT.**
- **D-46 (Web/PWA-Launch und native App als Fast-Follow, 31.08.2026 – ändert D-28):**
  - **Frühere Regel (D-28):** Native Apps erst **nach** nachgewiesener wiederkehrender Nutzung und nach Erreichen später festgelegter Schwellen.
  - **Neue Regel:** Der MVP startet als **responsive Webplattform bzw. installierbare PWA**; die **installierbare PWA ist ein verbindliches MVP-Ziel**. Der **öffentliche Pilotstart hängt nicht** von der Fertigstellung einer nativen App ab. Eine native App wird **früh/parallel als Fast-Follow** vorbereitet; die konkrete Freigabe/Priorisierung erfolgt **separat nach D-45**.
  - **Abgrenzung:** D-46 **autorisiert keine technische Umsetzung** und legt weder Plattformreihenfolge noch Entwicklungsframework fest. «Fast-Follow» = früh vorgemerkte Produktphase nach bzw. parallel zum Web/PWA-MVP, **nicht** automatische sofortige Implementierung.
  - **Ausgelöste Folge:** D-05 (App-Store-Namensprüfung, [ADR-001](./ADR-001-marke-domain-schutz.md)) ist nun **organisatorisch anstehend** (ohne behauptetes Ergebnis).
  - **Neue Pilothypothese:** Native App ist für die Zielgruppe **wesentlich einfacher** als eine installierbare PWA – durch Nutzer-/Feldtests zu prüfen (A-28).
  - **Status AKZEPTIERT.**
- **D-30:** Der **Entscheid über die Deutschland-Expansionsvoraussetzungen ist getroffen** **[AKZEPTIERT]**: Deutschland wird **erst konkret geprüft, wenn alle vier Schweizer Pilotstädte** (Zürich, Basel, Bern, Luzern) **ausreichende Angebotsdichte, reale Wiederbuchung, tragfähigen Betrieb und kontrollierte Sicherheitsprozesse belegen**. **Nur die operative Deutschland-Expansion bleibt zurückgestellt**, bis diese beschlossenen Schweizer Kriterien erfüllt sind. **Status: AKZEPTIERT** (Kriterien beschlossen); operative Umsetzung wartet auf Kriterienerfüllung.

## Begründung

Web-first senkt frühe Entwicklungskosten, verbessert Auffindbarkeit und Angehörigen-Nutzung und beschleunigt die Validierung. Native Apps und die Deutschland-Prüfung werden an belegte Nachfrage/Kennzahlen gebunden, um zu frühe Investitionen (R-24/R-25) zu vermeiden.

## Konsequenzen

- Businessplan-Technikkapitel (§32) stellt Web/PWA-first als beschlossen dar; die **installierbare PWA** ist verbindliches MVP-Ziel und die **native App als Fast-Follow** früh/parallel vorgemerkt (D-46). Businessplan §34/§35 und die MVP-Abgrenzung sind entsprechend angepasst (native Apps nicht mehr ausschließlich «später»).
- **App-Store-Namensprüfung (D-05)** ist durch D-46 **nicht mehr unbestimmt zurückgestellt, sondern organisatorisch jetzt anstehend** ([ADR-001](./ADR-001-marke-domain-schutz.md)); es wird **keine** App-Store-Verfügbarkeit behauptet.
- Deutschland-Kapitel nennt den konkreten, **beschlossenen** Vier-Städte-Trigger; die operative Expansion bleibt bis zur Kriterienerfüllung ausstehend. Die **Deutschland-Namensprüfung (D-03)** bleibt **zurückgestellt** und an den Expansions-Trigger gebunden.

## Risiken

- Zu frühe App-Entwicklung (R-24) bzw. zu frühe Expansion (R-25). Gegenmassnahme: Trigger einhalten.
- Fehlende mobile Nutzung könnte native Apps verzögern. Gegenmassnahme: PWA/Push evaluieren.

## Offen bleibende Unterpunkte

- **Feste Schwellenwerte entfallen** (D-45): keine automatischen Kennzahlenschwellen mehr; A-21 entsprechend aktualisiert. Der konkrete Native-App-Startentscheid erfolgt als **Gesamtbewertung des Gründers** mit **separater Freigabe** (D-45) – dieser Entscheid ist noch offen.
- **Plattformreihenfolge und Entwicklungsframework** der nativen App sind **technische** Fragen und bleiben bewusst **später** (nicht durch D-46 präjudiziert).
- Tatsächliche **operative Auslösung** der Deutschland-Expansion (D-30) nach belegter Erfüllung der Städte-Kennzahlen (Kriterien selbst sind beschlossen).

## Externe Prüfpflichten

- Deutschland/EU-Namens- und Rechtsprüfung vor Expansion (Zusammenhang mit D-03).
- **App-Store-Namensprüfung (D-05)** nun organisatorisch anstehend – **keine** Rechtsprüfung durch diese ADR; kein Ergebnis behauptet.

## Änderungshistorie

- **28.08.2026:** D-28 (Web/PWA zuerst, native Apps erst bei Schwellen) und D-30 (Deutschland-Trigger) beschlossen.
- **31.08.2026:** D-45 (keine festen Schwellen; Gründer-Gesamtbewertung + separate Freigabe) und D-46 (Web/PWA-MVP mit verbindlicher installierbarer PWA; native App als Fast-Follow) beschlossen. **D-46 ändert D-28** und löst D-05 als organisatorisch anstehend aus. Frühere Regel bleibt oben als Historie sichtbar.

## Nachweis

Konsolidierte Gründerfreigabe (28.08.2026); strukturierte interaktive Gründerklärung (31.08.2026, Entscheidungsblock 6) für D-45/D-46.
