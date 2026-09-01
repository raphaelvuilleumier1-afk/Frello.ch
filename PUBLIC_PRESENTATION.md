# PUBLIC_PRESENTATION

> **Kanonische öffentliche Produktquelle für Frello.**
> Diese Datei ist die **einzige freigegebene öffentliche Produktquelle** für die Darstellung von Frello auf `kreativ-solutions.ch/<produkt>`, für weitere öffentliche Präsentationen durch Kreativ Solutions sowie für spätere externe Produktkommunikation, sofern ausdrücklich freigegeben.
>
> Eine Claude-Sitzung im Kreativ-Solutions-Repo baut die KS-Projektseite **ausschliesslich** aus dieser Datei. Sie darf **keine** anderen internen Frello-Dateien (Businessplan, ADRs, Register, Research) eigenmächtig als öffentliche Quelle interpretieren. Fehlt eine Information, wird sie **nicht erfunden** und **nicht durch KS-Stil ersetzt**, sondern als `OPEN` / `TO VERIFY` gemeldet. Siehe [§39 – Regel für spätere KS-Sessions](#39-verbindliche-regel-für-spätere-ks-sessions).

**Status-Vokabular in dieser Datei**

| Marker | Bedeutung |
|---|---|
| `PUBLIC` | Ausdrücklich für die öffentliche Verwendung freigegeben. |
| `OPEN` | Vom Gründer / von Kreativ Solutions noch zu entscheiden; existiert noch nicht. |
| `TO VERIFY` | Grundsätzlich entschieden, aber Umsetzung/Nachweis noch ausstehend oder extern zu prüfen. |
| `NOT DEFINED` | Im Repository nicht vorhanden. Nicht erfinden, nicht ersetzen. |
| `CONFIDENTIAL` | Ausdrücklich **nicht** öffentlich (siehe §33). |

---

## 1. Dokumentstatus

| Feld | Wert |
|---|---|
| **Version** | v0.1.0 (Erstanlage dieser kanonischen Datei) |
| **Datum** | 2026-09-01 |
| **Produktstatus** | Konzept / In Konzeption (Businessplan V0.2, Gründerprüfung). **Nicht lanciert, nicht gegründet.** |
| **Verantwortlich** | Kreativ Solutions GmbH (geplante Betreiberin, `TO VERIFY` – rechtlich/steuerlich extern zu prüfen, D-14) |
| **Letzte inhaltliche Prüfung** | 2026-09-01 |
| **Public-Freigabestatus dieser Datei** | Kuratiert. Enthält **nur** die in §32 (PUBLIC Allow-list) freigegebenen Inhalte. Der zugrunde liegende Businessplan V0.2 ist ein **internes Arbeitsdokument, nicht freigegeben, nicht investorenfinal** – er selbst ist **nicht** öffentlich. |
| **Quellenbasis** | `docs/business/` (Businessplan V0.2, Entscheidungsregister D-01…D-30, ADR-001…007, Annahmen-/Quellenregister) und `docs/research/`. Stand aller Quellen: 28.08.2026. |

---

## 2. Produktidentität

| Feld | Wert | Status |
|---|---|---|
| **Produktname** | Frello | `PUBLIC` (gewählter Arbeits- und Produktname) |
| **Kurzbezeichnung** | Schweizer Plattform für gemeinsame Erlebnisse – einfach, sicher und in der Nähe | `PUBLIC` (Beschreibung, kein finaler Claim) |
| **Betreiber / Herkunft** | Kreativ Solutions GmbH (Frello ist ein Produkt von Kreativ Solutions) | `PUBLIC` / `TO VERIFY` (Betreiberrolle rechtlich/steuerlich extern zu prüfen, D-14) |
| **Domain** | `frello.ch` | `TO VERIFY` – Registrierung ist **beschlossen** (D-01), aber **ohne Registrar-Nachweis**. Domain gilt **nicht** als registriert/gesichert, solange kein Nachweis vorliegt. Nicht als „live" darstellen. |
| **Domainstatus** | Nicht nachgewiesen live | `TO VERIFY` |
| **Öffentliche Verfügbarkeit** | Noch nicht öffentlich verfügbar (keine öffentliche Plattform, keine App) | `PUBLIC` (Fakt) |
| **Produktstatus** | In Konzeption; vor regionalem Concierge-Pilot | `PUBLIC` |

**Nicht behaupten (unzulässig):** Frello sei eine eingetragene Marke; `frello.ch` sei gesichert oder live; Frello sei markenrechtlich konfliktfrei; Frello sei gegründet, lanciert oder verfügbar.

---

## 3. Produktkern

Frello ist eine geplante Schweizer Internetplattform (mit möglicher späterer App), über die Menschen gemeinsame **Freizeitaktivitäten und Veranstaltungen entdecken, verbindlich buchen und zusammen besuchen** können. Der primäre Fokus liegt auf **Pensionierten und älteren Menschen (ab 65)**; die Plattform bleibt grundsätzlich **für alle Erwachsenen offen**.

Frello ist ein **kuratierter, vertrauenswürdiger Erlebnis-Marktplatz mit sozialer Begleitung** – ausdrücklich **weder** eine Dating-App **noch** ein blosser Eventkalender. Profil- und Chatfunktionen unterstützen das reale Treffen; sie sind **nicht** das Hauptprodukt.

`PUBLIC`. Keine Marketingübertreibung, keine Alleinstellungsbehauptung.

---

## 4. Ausgangsproblem

Ältere Menschen haben oft Zeit, Interesse und Mobilität, finden aber passende **gemeinsame** und **verbindliche** Freizeitanlässe nur schwer:

- Die Auffindbarkeit lokaler Angebote ist **fragmentiert** (Gemeindekalender, Vereinsaushänge, Telefonanmeldungen, WhatsApp-Gruppen).
- Die Hürde **„Mit wem gehe ich hin?"** bleibt bestehen.
- Verbindlichkeit, Vertrauen und Zugänglichkeitsinformationen fehlen häufig.

**Problem in einem Satz:** Es fehlt ein vertrauenswürdiger, seniorengerechter Weg, konkrete gemeinsame Erlebnisse in der Nähe zu finden, verbindlich zu buchen und sicher gemeinsam zu besuchen.

Gesellschaftlicher Kontext (belegt, `PUBLIC`, Quelle: BFS / «connect!» / «Digital Seniors 2025»): rund **1,8 Mio.** Personen ab 65 in der Schweiz mit steigender Tendenz; **neun von zehn** über 65 sind online (bei heterogenen digitalen Kompetenzen). Einsamkeit im Alter ist real, aber differenziert und **nicht** mit Alleinleben gleichzusetzen.

> **Kommunikationsgrenze:** Frello wird **nicht** als „Einsamkeits-App" positioniert und stellt ältere Menschen **nicht** als einsam, hilfsbedürftig, passiv oder technisch unfähig dar (siehe §22 Anti-Patterns).

---

## 5. Sinn des Produkts

Frello soll die unnötige Reibung zwischen **Interesse** und **realer gemeinsamer Teilnahme** beseitigen. Statt verstreuter Kanäle, telefonischer Einzelanmeldungen und der offenen Frage „mit wem?" soll ein einziger, vertrauenswürdiger Ort entstehen, an dem ein Erlebnis gefunden, verbindlich gebucht und **tatsächlich gemeinsam besucht** wird.

Dahinter steht die Verbesserung: **aus Interesse wird reale, wiederkehrende Teilnahme und lokale Zugehörigkeit** – nicht Bildschirmzeit. `PUBLIC` (als Produktsinn; strategische Leitidee, kein finaler Claim).

---

## 6. Nutzen

Für Teilnehmende wird konkret (`PUBLIC`, als Nutzenversprechen – konkrete Feature-Zusagen stehen unter MVP-Vorbehalt):

- **Einfacher:** kuratierte, verständlich beschriebene Angebote statt fragmentierter Kanäle.
- **Sicherer:** verifizierte Anbieter, menschliche Moderation, Schutz vor Betrug und Belästigung.
- **Angenehmer:** kleine Gruppen, „Alleine willkommen", ereignisbezogener Gruppenchat, Gastgeber-Begrüssung.
- **Zugänglicher:** Angaben zu Tempo, Barrierefreiheit, ÖV, Verpflegung; Telefon-/Angehörigenunterstützung.
- **Verlässlicher:** Mindest-/Höchstteilnehmerzahl, Warteliste mit Nachrücken, klare Storno- und Rückerstattungsregeln.

Für Anbieter (geprüfte gewerbliche, öffentliche und gemeinnützige Anbieter): neue passende Gäste, höhere Auslastung durch gefüllte Gruppen, Buchungs- und Wartelistenabwicklung, Support und Vertrauensinfrastruktur. `PUBLIC` (als Nutzen; Zahlenbelege noch `OPEN`).

---

## 7. Wirkung

Funktion → Konsequenz → Wirkung (`PUBLIC`):

- Kuratierte, verständliche Angebote → weniger Suchaufwand → **man findet überhaupt etwas Passendes in der Nähe**.
- Kleingruppe + „Alleine willkommen" + Gruppenchat → man muss nicht jemanden zum Mitkommen organisieren → **man traut sich hinzugehen**.
- Verbindliche Buchung + Warteliste + klare Storno-Regeln → Planungssicherheit → **der Anlass findet wirklich statt und man erscheint**.
- Verifizierte Anbieter + Moderation → Vertrauen → **man fühlt sich sicher genug, teilzunehmen**.
- Wiederkehrende Formate → wiederholte reale Teilnahme → **lokale Zugehörigkeit und neue Bekanntschaften**.

Der eigentliche Zielzustand ist **wiederholte tatsächliche Teilnahme** – nicht Downloads oder Registrierungen.

---

## 8. Zielgruppe

`PUBLIC` (nur öffentlich freigegebene Positionierung):

- **Primär:** Menschen ab **65** – aktive Pensionierte, selbstständig, zunehmend digital erreichbar, an gemeinsamen Aktivitäten interessiert.
- **Offen für alle Erwachsenen.** Eventbezogene Altersfokusse (z. B. 60+/70+/80+) sind möglich und werden transparent ausgewiesen. (Diskriminierungsrechtliche Zulässigkeit: `TO VERIFY`.)
- **Menschen in Übergangssituationen** (Pensionierung, Verwitwung, Umzug u. a.) – der Bedarf ist ereignis-, nicht rein altersgetrieben.
- **Angehörige** als wichtige indirekte Nutzergruppe (Buchung durch Angehörige ist vorgesehen).
- **Anbieter:** geprüfte gewerbliche Anbieter, öffentliche Institutionen, gemeinnützige Organisationen und Vereine. **Private Gastgeber sind im Start nicht zugelassen.**

---

## 9. Öffentlich erklärbares Funktionsprinzip

Verständliche, abstrakte Ebene (`PUBLIC`, keine vertrauliche interne Mechanik):

1. **Entdecken** – Erlebnisse in der Nähe finden und nach Region, Zeit, Preis, Tempo und Barrierefreiheit filtern.
2. **Verstehen** – Anlass mit klaren Angaben prüfen (Leistung, Preis, Zugänglichkeit, „Alleine willkommen", Gruppengrösse).
3. **Verbindlich buchen** – anmelden/buchen; bei vollem Anlass Warteliste mit automatischem Nachrücken.
4. **Gemeinsam hingehen** – Erinnerungen, ereignisbezogener Gruppenchat zur Anreise, Begrüssung vor Ort.
5. **Zurückgeben** – kurze Bewertung des Anlasses; darüber wächst Vertrauen und Angebotsqualität.

> **Besser gezeigt als erklärt:** dieser Ablauf (Entdecken → Buchen → gemeinsam Erleben → Wiederkommen) eignet sich für eine visuelle Darstellung. Siehe §30.

---

## 10. Abgrenzung

Was Frello **nicht** ist (`PUBLIC`, nur relevante Abgrenzungen):

- **Keine Dating-Plattform.** Kein Partnermatching, keine Swipe-Mechanik, keine öffentlichen Beliebtheitsranglisten, keine Teilnehmerbewertungen.
- **Kein blosser Eventkalender / keine reine Ticketplattform.** Der Mehrwert liegt in Kuratierung, Gruppenbildung, Vertrauen und Begleitung.
- **Kein öffentliches Social Network.** Kein Social Feed, keine Follower-/Like-Mechaniken; im Start nur ein zurückhaltender, sicherer Steckbrief.
- **Keine „Einsamkeits-App".** Positive Erlebnismarke, nicht Defizitorientierung.
- **Nicht auf maximale Bildschirmzeit optimiert.**

---

## 11. Zentrale Nutzungssituationen

Reale, öffentlich erklärbare Situationen, die Nutzen und Wirkung verständlich machen (`PUBLIC`, illustrativ; keine realen Kundenbeispiele verfügbar):

- Gemeinsamer **Mittagstisch** oder Themenabend in einem lokalen Restaurant.
- **Spiel & Geselligkeit:** Jassen, Bingo, Quiz, Spielnachmittag.
- **Kultur:** gemeinsamer Museums-, Theater- oder Konzertbesuch mit Gruppentreffpunkt.
- **Ausflug/Reise:** Tagesfahrt, Schifffahrt, geführte Besichtigung.
- **Bewegung & Natur:** leichter Spaziergang, Gymnastik, Bewegungsgruppe.
- **Lernen & Kreativität:** Kurs, Workshop, Vortrag.

Wiederkehrende, lokale Kleingruppenformate sind charakteristisch. „Online & von zuhause" ist ergänzend, **nicht** der Produktkern.

---

## 12. Öffentliche Fähigkeiten

Öffentlich nennbare Fähigkeiten (`PUBLIC`; existierend/beschlossen, unter MVP-Vorbehalt – **keine Roadmap als aktuelle Funktion darstellen**):

- Regionale Eventsuche mit sinnvollen Filtern (Region, Zeit, Preis, Tempo, Barrierefreiheit).
- Verifizierte Anbieter und kuratierte Anlässe.
- Verbindliche Anmeldung/Buchung mit Mindest-/Höchstteilnehmerzahl.
- Warteliste mit automatischem Nachrücken.
- Klare, standardisierte Stornooptionen (drei feste Modelle; interne Detailsätze `CONFIDENTIAL`).
- Sicherer, zurückhaltender Steckbrief statt öffentlichem Social-Profil.
- Moderierter, ereignisbezogener Gruppenchat für bestätigte Teilnehmende (keine freien 1:1-Nachrichten).
- Bewertung von Anlässen/Anbietern (keine öffentliche Teilnehmerbewertung).
- Zugänglichkeits- und Mobilitätsangaben pro Anlass.
- Angehörigenbuchung und menschliche Unterstützung (Rückrufservice in Supportzeiten).

`OPEN`: Welche Felder/Funktionen im MVP verbindlich sind, ist teils noch offen. Native Apps sind **nicht** aktuelle Funktion (Web/PWA zuerst).

---

## 13. Produktstatus / Reifegrad

**In Konzeption.** `PUBLIC`.

- Businessplan V0.2 (Gründerprüfung) liegt vor; Grundrichtungen sind beschlossen.
- Vorgesehenes Vorgehen: regionaler **Concierge-Pilot** vor umfassendem Softwarebau, danach **Web/PWA zuerst**.
- **Keine** lancierte Plattform, **keine** App, **keine** nachgewiesene Live-Domain, **keine** Gründung.

Nicht als Beta/verfügbar/lanciert darstellen.

---

## 14. Öffentliche Nachweise

**Keine** öffentlichen Proof Points vorhanden. `NOT DEFINED` / `OPEN`.

- Keine Pilotresultate, keine Kennzahlen, keine realen Kunden, keine Referenzen, keine Partnerschaften, keine Auszeichnungen, keine Tests, keine messbare Wirkung.
- Belegbar ist **nur** der demografische/gesellschaftliche Marktkontext (§4), nicht produktbezogene Wirkung.

**Keine erfundenen Proof Points verwenden.**

---

# MARKENIDENTITÄT

> **Grundlegender Hinweis (zentral):** Im Produktrepo existiert **derzeit keine visuelle Markenidentität**. ADR-001 hält ausdrücklich fest: *„Marketing-/Logoarbeiten sind bis Abschluss von D-02 Stufe 2 [professionelle markenrechtliche Ähnlichkeitsrecherche] zurückzuhalten."* Logo, Farben, Typografie, Formsprache, Muster, Bildsprache, Ikonografie und Motion sind daher **`NOT DEFINED`**.
>
> Das bedeutet für die KS-Projektseite: Sie kann **noch nicht** im eigenen Markenstil des Produkts gebaut werden, weil dieser Stil noch nicht existiert. Fehlende Brand-Information wird **nicht erfunden** und **nicht durch KS-Stil ersetzt**. Bis die visuelle Identität definiert ist, gelten nur die **belegten, nicht-visuellen Haltungsprinzipien** (Ton, Positionierung, Zugänglichkeit) aus §22.

## 15. Masterlogo

`NOT DEFINED`. Es existiert **kein** Logo, kein Signet, keine Wortmarke, kein Favicon/App-Icon im Repository.

- Asset-Pfad: `NOT DEFINED` (keine Asset-Verzeichnisse im Repo).
- Primärlogo / Varianten / Dark-Light / Monochrom / Schutzraum / Mindestgrösse: `NOT DEFINED`.
- SHA-256 / Asset-Identifikation: nicht anwendbar (kein Asset).

**Regel:** Kein Logo generieren, keines annehmen, keines aus dem Namen ableiten und als „das Frello-Logo" darstellen. Logoarbeit ist bis zum Abschluss der professionellen Markenrecherche (D-02 Stufe 2, `TO VERIFY`/extern) bewusst gesperrt.

## 16. Farbwelt

`NOT DEFINED`. Es sind **keine** Brandfarben definiert – keine Primär-, Sekundär-, Akzent-, Hintergrund- oder Textfarben, keine HEX/RGB/HSL-Werte, keine funktionalen Web-Tokens, keine Dark-/Light-Definitionen, keine Kontrastregeln.

**Regel:** Keine Farbpalette erfinden. Keine KS-Palette „umfärben" und als Frello-Farbwelt ausgeben. Farben sind `OPEN` und müssen im Rahmen der Markenentwicklung definiert werden. Einzige belegte Anforderung an ein späteres Farbsystem: **hoher Kontrast und gute Lesbarkeit für die Zielgruppe 65+** (aus der beschlossenen seniorengerechten Positionierung, §22) – dies ist eine Anforderung, **kein** definierter Farbwert.

## 17. Typografie

`NOT DEFINED` / `OPEN`. Keine primäre, sekundäre, Display-, Body-, UI- oder Mono-Schrift definiert; keine Weights, kein Tracking, keine Headline-/Body-Regeln.

**Regel:** Keine Schrift erfinden, keine Ersatzschrift setzen. Lizenz-/Technikfragen sind ungeklärt. Einzige belegte Anforderung: **gut lesbar, ausreichend gross, seniorengerecht** (§22) – als Wirkungsanforderung, nicht als Schriftfestlegung. Gewünschte Wirkung (aus Positionierung ableitbar, nicht als Font entschieden): eher **warm, ruhig, klar, vertrauenswürdig** statt technisch-kühl. Weiterhin `OPEN`.

## 18. Formsprache

`NOT DEFINED`. Keine charakteristischen Formen, Linien, Module, Raster oder logo-abgeleiteten Formen dokumentiert (es existiert kein Logo, aus dem abstrahiert werden könnte).

**Regel:** Keine Formsprache erfinden oder aus dem Namen ableiten. `OPEN`.

## 19. Muster / Pattern

`NOT DEFINED`. Keine Patterns, Texturen, Raster, Linienfelder oder Hintergrundmuster definiert. `OPEN`.

## 20. Bildsprache

`NOT DEFINED` / `OPEN`. Keine Bildsprache (Fotografie, Illustration, Renderings, UI-Screens, Farbbehandlung, Licht, Perspektive, Crop) definiert.

**Inhaltliche Leitplanke, falls später Bildsprache entsteht (aus §22 abgeleitet, `PUBLIC` als Haltung):** reale, positive, würdevolle Darstellung aktiver Menschen; **keine** stigmatisierende, mitleidige oder „defizitäre" Darstellung des Alters; keine Stockfoto-Klischees von Einsamkeit. Ob überhaupt Menschenbilder verwendet werden, ist `OPEN`.

## 21. Ikonografie

`NOT DEFINED`. Kein Icon-Stil, keine Strichstärke, keine Herkunft definiert. Keine generische Icon-Library als Markenidentität behaupten. `OPEN`.

## 22. Art Direction

Die visuellen Tokens sind `NOT DEFINED` (§15–21). Belegbar ist jedoch die **Haltung/Wirkung** aus der beschlossenen Positionierung (`PUBLIC`) – sie ist der einzige verbindliche Rahmen, bis die visuelle Identität existiert:

**Soll wirken als:** respektvoll · warm · vertrauenswürdig · klar · ruhig · zugänglich (seniorengerecht) · positiv/lebensbejahend · sicher. Alter erscheint als **Fokus und Lebensphase, nicht als Defizit**.

**Soll ausdrücklich NICHT sein (Anti-Patterns, `PUBLIC` als Leitplanke):**

- kein „Einsamkeits-/Pflege-/Defizit"-Look;
- keine Dating-/Swipe-Ästhetik;
- kein generischer SaaS-/Startup-Look, kein Startup-Gradient, keine „Card-Suppe";
- kein Fintech-, Cyberpunk-, Glassmorphism- oder generischer AI-Look;
- nichts Grelles, Hektisches, Verspieltes-Kindliches;
- **nicht** „Kreativ-Solutions-Seite in anderer Farbe".

> Diese Art Direction ist **Haltung**, nicht visuelle Spezifikation. Konkrete Farben/Schriften/Formen bleiben `OPEN`, bis definiert.

## 23. Motion Language

`NOT DEFINED`. Kein Bewegungsprinzip, keine Geschwindigkeit, kein Timing, keine Scroll-/Hover-/Load-Regeln definiert.

**Verbindliche Rahmenregel (unabhängig von späterer Definition, `PUBLIC`):** `prefers-reduced-motion` respektieren; Motion darf **niemals** die einzige Informationsquelle sein; ruhig und zurückhaltend statt aufdringlich (passend zur Zielgruppe). Konkrete Motion-Regeln: `OPEN`.

## 24. Interaktionssprache

`NOT DEFINED` / `OPEN`. Keine UI-Sprache für Buttons, Links, Hover, Focus, Cards, Navigation, Formulare definiert.

**Verbindliche Rahmenanforderung (`PUBLIC`, aus Zielgruppe):** grosse Klickflächen, klare Fokuszustände, gut lesbare Beschriftungen, einfache und fehlertolerante Bedienung, Barrierefreiheit (WCAG-Grundsätze). Konkrete Ausgestaltung: `OPEN`. Frello muss **nicht** dieselbe UI-Sprache wie Kreativ Solutions verwenden.

---

# MARKENÜBERSETZUNG FÜR DIE KS-PROJEKTSEITE

## 25. KS-Projektseite — Markenregeln

Die Seite `kreativ-solutions.ch/<produkt>` ist eine Produkt-/Markenpräsentation **innerhalb** von Kreativ Solutions. Sie soll sich nach **dem Produkt** anfühlen – nicht „KS-Seite + andere Farbe".

**Grundsatz:** Auf der Produktseite ist **Frello der visuelle Held**; Kreativ Solutions bleibt als **Herkunft / Dachmarke** sichtbar.

**Welche Produktmarken-Elemente sollen sichtbar werden?**

Sobald sie existieren: Produktfarben, Produktlogo, Typografie, Formsprache, Motion, Pattern, Bildsprache, Interaktionsdetails.

> **Aktuelle Einschränkung (wichtig):** Alle diese Elemente sind heute `NOT DEFINED` (§15–24). Die KS-Projektseite kann daher **derzeit nicht** vollständig im eigenen Frello-Markenstil gebaut werden. Bis die visuelle Identität definiert ist, gilt:
> - Es werden **keine** Frello-Farben/-Schriften/-Logos erfunden.
> - Es wird **nicht** ersatzweise der KS-Stil als „Frello-Stil" ausgegeben.
> - Sichtbar/verwendbar sind nur: **Name, Beschreibung, Positionierung, Nutzen, Wirkung, Nutzungssituationen, das erklärbare Funktionsprinzip** und die **Haltungs-Art-Direction** aus §22 (warm, respektvoll, zugänglich, Anti-Patterns).
> - Fehlende Brand-Bausteine werden auf der Seite (bzw. im Übergabebericht an KS) als `OPEN` markiert, nicht kaschiert.

## 26. Intensität der Markenübernahme

Empfohlenes Prinzip (`PUBLIC` als Regel; die konkrete visuelle Umsetzung ist erst nach Definition der Identität möglich):

- **Home Preview (KS-Startseite):** **subtil.** Nur dezenter Produkthinweis (Name + Kurzbeschreibung), im KS-Rahmen.
- **Projekte-Seite (`/projekte`):** **deutlich.** Frello als eigenständiges Projekt erkennbar (Name, Positionierung, Kurzwirkung), aber im KS-Layout eingebettet.
- **Produktseite (`/<produkt>`):** **vollständig** – sobald die Produktidentität existiert. Bis dahin: inhaltlich vollständig (Text/Struktur), visuell im zurückhaltenden, neutral-warmen Rahmen gemäss §22, **ohne erfundene Marken-Tokens**.

Nur übernehmen, soweit es zur Marke und zur bestehenden KS-Architektur passt.

## 27. Übergang KS → Produkt

Gewünschtes Gefühl (`PUBLIC` als Intention, keine starre Template-Regel; visuelle Mittel erst nach Identitätsdefinition):

- Der Wechsel soll **spürbar, aber ruhig** sein: von der KS-Dachmarke hin zur wärmeren, zugänglichen Produktwelt.
- Die KS-Navigation/Herkunft bleibt erhalten; der inhaltliche Fokus verengt sich auf Frello.
- Farb-/Typo-/Formwechsel: **erst möglich, wenn Frello-Tokens definiert sind** (`OPEN`).

## 28. Rückverbindung Produkt → KS

Kreativ Solutions bleibt sichtbar als Herkunft, ohne das Produkt zu dominieren (`PUBLIC`):

- Herkunftsangabe „Ein Produkt von Kreativ Solutions" (Origin-Hinweis).
- Rücklink zu Kreativ Solutions.
- Footer / Legal / Impressum bei Kreativ Solutions.

---

# CONTENT FÜR DIE KS-PROJEKTSEITE

## 29. Kernbotschaften

Was beim Besucher hängen bleiben soll (`PUBLIC`; keine fertigen Werbetexte, sondern Aussagenkern):

- **Problem:** Gemeinsame, passende Erlebnisse in der Nähe zu finden und verbindlich zu besuchen, ist heute umständlich – besonders im Alter, und besonders die Frage „mit wem gehe ich hin?".
- **Lösung:** Frello bündelt Entdecken, verbindliches Buchen und gemeinsames Hingehen an einem vertrauenswürdigen, seniorengerechten Ort.
- **Relevanz:** Grosse, wachsende Zielgruppe; reale Reibung; positive statt defizitäre Perspektive.
- **Was besser wird:** einfacher finden, sicher gemeinsam hingehen, verlässlich teilnehmen – **reale Teilnahme statt Bildschirmzeit**.

## 30. Was besser GEZEIGT als erklärt wird

Damit eine spätere Seite **nicht** alles als Fliesstext ausgibt, vorzugsweise **visuell** vermitteln (`PUBLIC`):

- der **Ablauf** Entdecken → verbindlich Buchen → gemeinsam Erleben → Wiederkommen (§9);
- **Vereinfachung**: von fragmentierten Kanälen zu einem Ort;
- **Gruppenbildung / gemeinsames Hingehen** (aus „allein" wird „gemeinsam");
- **Warteliste & Nachrücken** als ruhiger, verständlicher Mechanismus;
- **Zugänglichkeit** (Tempo, Barrierefreiheit, ÖV) als klare, ikonisch vermittelbare Angaben;
- **Vertrauen** (verifizierte Anbieter, Moderation) als sichtbares Prinzip.

## 31. Was ausdrücklich NICHT als Website-Text erscheinen soll

Nicht als sichtbarer Seitentext ausgeben (`CONFIDENTIAL`, siehe §33):

- interne Strategie, Governance und Entscheidungslogik (D-IDs, ADRs, Decision-Status);
- Produktphilosophie/Markenarchitektur-Erklärungen als solche;
- technische Interna und operative Roadmap;
- Provisions-/Preismechanik und Finanzmodelle;
- vertrauliche Sicherheits-/Moderationsmechanik;
- rechtliche/steuerliche Vorbehalte und Risikoregister.

---

# PUBLIC / CONFIDENTIAL

## 32. PUBLIC Allow-list

Ausdrücklich öffentlich verwendbar:

- **Produktname** „Frello" und die **Herkunft** „Produkt von Kreativ Solutions".
- **Kurzbeschreibung/Positionierung:** Schweizer Plattform für gemeinsame Erlebnisse; entdecken, verbindlich buchen, gemeinsam besuchen; **einfach, sicher, in der Nähe**.
- **Zielgruppe:** primär 65+, offen für alle Erwachsenen; Angehörige; geprüfte gewerbliche/öffentliche/gemeinnützige Anbieter.
- **Problem, Sinn, Nutzen, Wirkung** (§4–7).
- **Erklärbares Funktionsprinzip** (§9) und **öffentliche Fähigkeiten** (§12) unter MVP-Vorbehalt.
- **Abgrenzungen** (§10) und **Nutzungssituationen** (§11).
- **Produktstatus:** „in Konzeption / vor Pilot" – ehrlich, ohne Reife zu behaupten.
- **Gesellschaftlicher Marktkontext** (§4) mit Quellenbezug (BFS u. a.), als Kontext, nicht als Produktwirkung.
- **Haltungs-Art-Direction** (§22): warm, respektvoll, zugänglich, plus Anti-Patterns.

## 33. CONFIDENTIAL / NOT PUBLIC

Diese Informationen dürfen **nicht** auf KS, in Metadata, SEO, OpenGraph, Alt-Texten, aria-labels oder in öffentlichen Präsentationen erscheinen:

- **Konkrete Provisions-/Preissätze** (z. B. Standard-/betreute-Format-Sätze) und Preisbenchmarks – interne Pilotgrundlage in Validierung.
- **Finanzmodelle, Unit Economics, Szenarien, Beispielrechnungen.**
- **Pilot-Interna:** konkrete Dichteschwellen als Zusagen, Pilotstädte-Zeitpläne, Pilotdauer, interne Kennzahlen/North-Star-Definition.
- **Interne Governance:** Entscheidungs-IDs (D-01…D-30), ADR-Inhalte, Decision-Status, Annahmen-/Quellenregister, Source-of-Truth-Ordnung.
- **Rechtliche/steuerliche/regulatorische Vorbehalte** und der **Risikoregister**-Inhalt.
- **Vertrauens-/Sicherheitsmechanik im Detail** (Verifikations-/Moderations-/Anti-Betrugs-Interna) über die abstrakte Prinzipdarstellung hinaus.
- **Interne Profil-/Datenfelder**, die als „nicht öffentlich" markiert sind.
- **Domainstatus als „gesichert/live"**, solange kein Registrar-Nachweis vorliegt.
- **Unbelegte Behauptungen** zu Marke, Registrierung, Reife, Kunden, Wirkung.

> Diese Schutzgrenze selbst **nicht** als Marketingtext verwenden.

## 34. Unsichere Informationen

Alles, was in dieser Datei nicht ausdrücklich als `PUBLIC` markiert ist, gilt als **NOT PUBLIC BY DEFAULT**. Im Zweifel: nicht veröffentlichen, `TO VERIFY` melden.

---

# EXTERNE PRODUKTWEBSITE

## 35. Produktwebsite

- **Geplante Domain:** `frello.ch` – `TO VERIFY` (Registrierung beschlossen, D-01; kein Registrar-Nachweis; nicht als live darstellen).
- **Status:** nicht live / nicht nachgewiesen. Es existiert **keine** öffentliche Produktwebsite. `NOT DEFINED` (Aufbau).
- **Verhältnis zur KS-Projektseite:** Klar unterscheiden:
  - **KS-Projektseite** `kreativ-solutions.ch/<produkt>` = Produktpräsentation innerhalb der Dachmarke Kreativ Solutions (Gegenstand dieser Datei).
  - **Eigentliche Produktwebsite** `frello.ch` = eigenständiger Produktauftritt (noch nicht vorhanden). Beziehung/Arbeitsteilung: `OPEN`.

---

# ZUKÜNFTIGE ERWEITERUNG

## 36. Öffentliche Informationen, die später relevant werden könnten

Noch **nicht** öffentlich freigegeben; erst nach ausdrücklicher Freigabe aufnehmen (`OPEN`):

- definierte visuelle Identität (Logo, Farben, Typografie, Formsprache, Motion) – **Voraussetzung**, damit die KS-Seite im echten Produktstil gebaut werden kann;
- nachgewiesene Domainregistrierung/Live-Gang von `frello.ch`;
- öffentlich nennbare neue Funktionen (nach Beschluss);
- reale Pilotresultate, Kennzahlen, reale Kunden, Referenzen, Partnerschaften, Integrationen;
- Launch/öffentliche Verfügbarkeit je Region.

## 37. Aktualisierungsregeln

`PUBLIC_PRESENTATION.md` ist eine **lebende Datei** und wird aktualisiert, sobald sich öffentlich relevante Fakten ändern – insbesondere bei: Produktstatus/Launch, Domainnachweis, neuer öffentlich freigegebener Funktion, Marken-/Logo-/Typografie-/Farb-/Motion-Definition, realen Kennzahlen, Referenzen, öffentlichen Integrationen.

Vorgehen: zuerst Änderung/Beleg in den internen Registern (`docs/business/`) erfassen, dann diese Datei aktualisieren, Version und Datum in §1 hochzählen und §38 ergänzen. Keine freigegebene Information verlieren, keine historische Entscheidung löschen.

## 38. Änderungsverlauf

### 2026-09-01 — v0.1.0
- **Änderung:** Erstanlage der kanonischen Datei `PUBLIC_PRESENTATION.md` aus Businessplan V0.2, Entscheidungsregister, ADR-001…007 sowie Research-Analyse.
- **Grund:** Etablierung der einzigen freigegebenen öffentlichen Produktquelle für die KS-Projektseite und weitere öffentliche Präsentationen.
- **Freigabestatus:** kuratiert; nur PUBLIC-Allow-list-Inhalte öffentlich. Sämtliche visuellen Marken-Bausteine als `NOT DEFINED`/`OPEN` gekennzeichnet (visuelle Identität existiert noch nicht; per ADR-001 bis zur professionellen Markenrecherche zurückgehalten).

---

## 39. Verbindliche Regel für spätere KS-Sessions

`PUBLIC_PRESENTATION.md` ist die **kanonische öffentliche Produktquelle**.

- Eine Claude-Sitzung im Kreativ-Solutions-Repo darf **nicht** eigenmächtig andere interne Frello-Produktdateien interpretieren oder veröffentlichen.
- Fehlt eine Information: **nicht erfinden.**
- Fehlt Design-/Brand-Information: **nicht durch KS-Stil ersetzen** – stattdessen `OPEN` / `TO VERIFY` melden.
- Die KS-Projektseite muss sich wie die **Produktmarke Frello** anfühlen – **nicht** wie eine umgefärbte Kreativ-Solutions-Seite. **Solange die visuelle Frello-Identität `NOT DEFINED` ist, ist der ehrliche Zustand: Inhalt vollständig, Visuals zurückhaltend/neutral-warm gemäss §22, offene Punkte transparent gemeldet.** Der nötige nächste Schritt zur „echten" Produktseite ist die Definition dieser Identität.

---

## Selbstkritik (Prüfprotokoll)

| # | Prüffrage | Ergebnis |
|---|---|---|
| 1 | Versteht ein externer Designer das Produkt? | Ja (§3–13). |
| 2 | Problem, Nutzen, Wirkung klar? | Ja (§4–7). |
| 3 | Klar, was öffentlich gesagt werden darf? | Ja (§32). |
| 4 | Klar, was vertraulich bleibt? | Ja (§33–34). |
| 5 | Masterlogo eindeutig auffindbar? | Nein – **existiert nicht**, ehrlich `NOT DEFINED` (§15). |
| 6 | Farben exakt dokumentiert? | Nein – **nicht definiert** (§16). |
| 7 | Typografie eindeutig? | Nein – `OPEN` (§17). |
| 8 | Formsprache verständlich? | Nicht vorhanden, `NOT DEFINED` (§18). |
| 9 | Pattern dokumentiert? | Nicht vorhanden (§19). |
| 10 | Bildsprache dokumentiert? | Nicht vorhanden; Haltung dokumentiert (§20). |
| 11 | Motion dokumentiert? | Nur Rahmenregel (Reduced Motion); Rest `OPEN` (§23). |
| 12 | Anti-Patterns dokumentiert? | Ja (§22). |
| 13 | Kann eine KS-Seite im echten Produktstil gebaut werden? | **Noch nicht** – visuelle Identität fehlt; ehrlich benannt (§25/§39). |
| 14 | Müsste der Designer raten? | Nur bei Visuals – dort ausdrücklich `OPEN`, **nicht** raten. |
| 15 | Nur „KS in anderer Farbe"? | Ausdrücklich untersagt (§22/§25/§39). |
| 16 | Klar, was besser gezeigt als erklärt wird? | Ja (§30). |
| 17 | Ungeklärte Punkte als `OPEN` markiert? | Ja, durchgängig. |
| 18 | Keine internen Fakten versehentlich `PUBLIC`? | Geprüft – Provision/Finanzen/Pilot-Interna/Governance als `CONFIDENTIAL` (§33). |
