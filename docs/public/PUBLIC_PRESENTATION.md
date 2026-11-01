# PUBLIC_PRESENTATION

> **Kanonische öffentliche Produktquelle für Frello.**
> Diese Datei ist die **einzige freigegebene öffentliche Produktquelle** für die Darstellung von Frello auf `kreativ-solutions.ch/<produkt>`, für weitere öffentliche Präsentationen durch Kreativ Solutions sowie für spätere externe Produktkommunikation, sofern ausdrücklich freigegeben.
>
> Eine Claude-Sitzung im Kreativ-Solutions-Repo baut die KS-Projektseite **ausschliesslich** aus dieser Datei. Sie darf **keine** anderen internen Frello-Dateien (Businessplan, Produktspezifikation, ADRs, Register, Research) eigenmächtig als öffentliche Quelle interpretieren. Fehlt eine Information, wird sie **nicht erfunden** und **nicht durch KS-Stil ersetzt**, sondern als `OPEN` / `TO VERIFY` gemeldet. Siehe [§39 – Regel für spätere KS-Sessions](#39-verbindliche-regel-für-spätere-ks-sessions).

**Status-Vokabular in dieser Datei**

| Marker | Bedeutung |
|---|---|
| `PUBLIC` | Ausdrücklich für die öffentliche Verwendung freigegeben. |
| `OPEN` | Vom Gründer / von Kreativ Solutions noch zu entscheiden; existiert noch nicht. |
| `TO VERIFY` | Grundsätzlich entschieden, aber Umsetzung/Nachweis noch ausstehend oder extern zu prüfen. |
| `NOT DEFINED` | Im Repository nicht vorhanden. Nicht erfinden, nicht ersetzen. |
| `INTERNAL ONLY` | Im Repository vorhanden, aber **nicht** für öffentliche Verwendung freigegeben. |
| `CONFIDENTIAL` | Ausdrücklich **nicht** öffentlich (siehe §33). |

---

## 1. Dokumentstatus

| Feld | Wert |
|---|---|
| **Version** | v0.2.0 (aktualisierte Fassung; gleicht die Erstanlage auf den aktuellen Dokumentenstand ab) |
| **Datum** | 2026-10-01 |
| **Freigabestatus dieser Fassung** | **Entwurf – aktualisierte Fassung zur Freigabe.** Die Freigabe der Fassung v0.1.0 gilt **nicht** für diese geänderte Fassung und wird **nicht** stillschweigend übertragen. |
| **Produktstatus** | Konzept / In Konzeption (interne Gründerprüfung). **Nicht lanciert, nicht gegründet.** |
| **Verantwortlich** | Kreativ Solutions GmbH (geplante Betreiberin, `TO VERIFY` – rechtlich/steuerlich extern zu prüfen, D-14) |
| **Letzte inhaltliche Prüfung** | 2026-10-01 |
| **Public-Freigabestatus der Inhalte** | Kuratiert. Enthält **nur** die in §32 (PUBLIC Allow-list) freigegebenen Inhalte. Die zugrunde liegenden internen Dokumente sind **Arbeitsdokumente, nicht freigegeben, nicht investorenfinal** – sie selbst sind **nicht** öffentlich. |
| **Quellenbasis** | `docs/business/` (Businessplan **V0.3**, Entscheidungsregister **D-01…D-46**, **ADR-001…ADR-008**, Annahmen-/Quellenregister; Stand 31.08.2026), `docs/product/` (fachliche Produktspezifikation V0.1, Stand 03.09.2026, **Entwurf – nicht freigegeben**), `docs/brand/` (kanonische Markenassets, Stand 02.09.2026) und `docs/research/`. |

> **Hinweis zur Fortschreibung:** Die Erstanlage dieser Datei (v0.1.0, 01.09.2026) beruhte auf Businessplan **V0.2** und D-01…D-30. Seither sind die Entscheide **D-31…D-46** sowie **ADR-008** hinzugekommen, drei frühere Entscheide wurden ausdrücklich geändert, und die kanonischen Markenmaster wurden intern verankert. Diese Fassung zieht das nach. Es werden **keine** neuen Gründerentscheide getroffen.

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
| **Marken-/App-Store-Status** | Keine geprüfte Verfügbarkeit nachgewiesen – weder markenrechtlich, noch bei Domains, noch in App-Stores | `TO VERIFY` |

**Nicht behaupten (unzulässig):** Frello sei eine eingetragene Marke; `frello.ch` sei gesichert oder live; Frello sei markenrechtlich konfliktfrei; der Name sei in App-Stores geprüft oder verfügbar; Frello sei gegründet, lanciert oder verfügbar.

**Ebenfalls nicht behaupten – rechtliche und belegbezogene Grenze:**

- **Rechtsverbindliche Storno-, Absage- oder Erstattungszusagen.** Die Storno-, Absage- und Ausfallregeln (§12) sind fachliche Planungsgrundsätze mit Status `TO VERIFY`; ihre rechtliche Ausgestaltung ist extern zu prüfen und nicht abgeschlossen. Es bestehen daher **keine** zusicherbaren Erstattungsansprüche und **kein** bestätigter Klauseltext.
- **Gewährleistete Sicherheit oder geprüfte Qualität** als Ergebnis der Anbieterprüfung; deren Prüfmassnahmen sind teils extern zu prüfen (§12).
- **Verifizierte Marktzahlen.** Die in §4 genannten Zahlen sind unverifizierte Übernahmen aus der internen Research-Analyse (`TO VERIFY`) und **nicht** für externe Verwendung validiert.

---

## 3. Produktkern

Frello ist eine geplante Schweizer Internetplattform, über die Menschen gemeinsame **Freizeitaktivitäten und Veranstaltungen entdecken, verbindlich buchen und zusammen besuchen** können. Der primäre Fokus liegt auf **Pensionierten und älteren Menschen (ab 65)**; die Plattform bleibt grundsätzlich **für alle Erwachsenen offen**.

Frello ist ein **kuratierter, vertrauenswürdiger Erlebnis-Marktplatz mit sozialer Begleitung** – ausdrücklich **weder** eine Dating-App **noch** ein blosser Eventkalender. Profil- und Chatfunktionen unterstützen das reale Treffen; sie sind **nicht** das Hauptprodukt.

Der geplante Start erfolgt als **Website bzw. installierbare Web-App**, nicht über App-Stores. Eine native App ist **nicht** zugesagt und **nicht** Bestandteil des geplanten Starts (§12/§13).

`PUBLIC`. Keine Marketingübertreibung, keine Alleinstellungsbehauptung.

---

## 4. Ausgangsproblem

Ältere Menschen haben oft Zeit, Interesse und Mobilität, finden aber passende **gemeinsame** und **verbindliche** Freizeitanlässe nur schwer:

- Die Auffindbarkeit lokaler Angebote ist **fragmentiert** (Gemeindekalender, Vereinsaushänge, Telefonanmeldungen, WhatsApp-Gruppen).
- Die Hürde **„Mit wem gehe ich hin?"** bleibt bestehen.
- Verbindlichkeit, Vertrauen und Zugänglichkeitsinformationen fehlen häufig.

**Problem in einem Satz:** Es fehlt ein vertrauenswürdiger, seniorengerechter Weg, konkrete gemeinsame Erlebnisse in der Nähe zu finden, verbindlich zu buchen und sicher gemeinsam zu besuchen.

Gesellschaftlicher Kontext — **sämtliche nachfolgenden Zahlen sind `TO VERIFY`** (unverifizierte Übernahmen aus der internen Research-Analyse, siehe Prüfvorbehalt unten):

- **Bevölkerungsbestand:** rund **1,8 Mio.** Personen ab 65 in der Schweiz. Diese Zahl ist im internen Quellenregister als **Summe zweier Altersgruppen** ausgewiesen (65–79 sowie 80+); die beiden Ausgangswerte sind **nicht unabhängig geprüft**, und die Summenbildung ist damit ebenfalls unverifiziert. Herausgeber laut Register: Bundesamt für Statistik (BFS), Rubrik «Alter» / Bevölkerungsstand. **Ungeklärt:** Das Register führt kein **Publikationsdatum**; die Bezeichnung «Bevölkerungsstand 2025» ist eine **Registerbezeichnung** und wird hier **nicht** als belegtes Datenbezugsjahr übernommen. Ebenfalls **nicht dokumentiert** ist die zugrunde liegende **Bevölkerungsdefinition** (z. B. ständige Wohnbevölkerung). Das Register vermerkt zudem «amtliche Momentaufnahme; Zahlen jahresabhängig».
- **Bevölkerungsszenarien (getrennt davon):** Nach den BFS-«Szenarien zur Bevölkerungsentwicklung 2025–2055» – Datumsangabe **15.04.2025 laut internem Register, nicht unabhängig belegt** – ist langfristig ein deutlicher Anstieg der Zahl älterer Menschen angelegt. Dies ist ein **Szenario und ausdrücklich keine garantierte Prognose**. Szenariowerte werden hier bewusst **nicht** als öffentliche Kennzahl genannt.
- **Digitale Erreichbarkeit:** **neun von zehn** Personen über 65 sind online, bei heterogenen digitalen Kompetenzen (laut Register: Pro Senectute Schweiz, «Digital Seniors 2025», 04.06.2025). Titel-, Herausgeber- und Datumsangabe stimmen mit dem Register überein; **das validiert die Kennzahl selbst nicht** – sie bleibt `TO VERIFY`.
- **Einsamkeit** im Alter ist real, aber differenziert und **nicht** mit Alleinleben gleichzusetzen. Enger definierte Einsamkeitszahlen werden hier **nicht** öffentlich genannt.

> **Prüfvorbehalt (verbindlich):** Das interne Quellenregister hält fest, dass sämtliche Quellen aus der Deep-Research-Analyse übernommen und **nicht erneut live abgerufen oder verifiziert** wurden, und dass **vor externer Verwendung** Aktualität, Bezugsjahr, Definition und geografische Relevanz **erneut zu prüfen** sind. Eine öffentliche Präsentation ist eine solche externe Verwendung. **Die Marktzahlen dieser Fassung sind damit noch nicht für externe Verwendung validiert.**

> **Zitierregel:** Diese Zahlen sind Marktkontext, **keine** Produktwirkung und **keine** Frello-Kennzahl. Bevölkerungsbestand und Szenarien nicht vermischen; Szenarien nicht als Prognose darstellen; Bezugsjahre und Definitionen nicht vermischen; unterschiedliche Einsamkeitsdefinitionen nicht zusammenziehen. Keine dieser Zahlen ohne vorherige Verifikation öffentlich verwenden (§32).

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
- **Zugänglicher:** Angaben zu Tempo, Barrierefreiheit und Verpflegung; Telefon-/Angehörigenunterstützung.
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
- **Angehörige** als wichtige indirekte Nutzergruppe. Die **Buchung durch Angehörige** für eine andere teilnehmende Person ist vorgesehen (datenschutzrechtliche Ausgestaltung `TO VERIFY`).
- **Anbieter:** geprüfte gewerbliche Anbieter, öffentliche Institutionen, gemeinnützige Organisationen und Vereine. **Private Gastgeber sind im Start nicht zugelassen.**

---

## 9. Öffentlich erklärbares Funktionsprinzip

Verständliche, abstrakte Ebene (`PUBLIC`, keine vertrauliche interne Mechanik):

1. **Entdecken** – Erlebnisse in der Nähe finden und nach Region, Zeit, Preis, Tempo, verfügbaren Plätzen und Barrierefreiheit filtern.
2. **Verstehen** – Anlass mit klaren, vollständigen Angaben prüfen (Leistung, Preis, Zugänglichkeit, „Alleine willkommen", Gruppengrösse).
3. **Verbindlich buchen** – anmelden/buchen; bei vollem Anlass Warteliste mit Nachrücken.
4. **Gemeinsam hingehen** – Erinnerungen, ereignisbezogener Gruppenchat zur Anreise, Begrüssung vor Ort.
5. **Zurückgeben** – kurze, strukturierte Bewertung des Anlasses; darüber wächst Vertrauen und Angebotsqualität.

> **Besser gezeigt als erklärt:** dieser Ablauf (Entdecken → Buchen → gemeinsam Erleben → Wiederkommen) eignet sich für eine visuelle Darstellung. Siehe §30.

---

## 10. Abgrenzung

Was Frello **nicht** ist (`PUBLIC`, nur relevante Abgrenzungen):

- **Keine Dating-Plattform.** Kein Partnermatching, keine Swipe-Mechanik, keine öffentlichen Beliebtheitsranglisten, keine Teilnehmerbewertungen.
- **Kein blosser Eventkalender / keine reine Ticketplattform.** Der Mehrwert liegt in Kuratierung, Gruppenbildung, Vertrauen und Begleitung.
- **Kein öffentliches Social Network.** Kein Social Feed, keine Follower-/Like-Mechaniken; im Start nur ein zurückhaltender, sicherer Steckbrief.
- **Keine „Einsamkeits-App".** Positive Erlebnismarke, nicht Defizitorientierung.
- **Keine bezahlte Hervorhebung.** Anlässe werden nicht gegen Bezahlung bevorzugt platziert; die Reihung ist inhaltlich.
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

Öffentlich nennbare Fähigkeiten (`PUBLIC`; fachlich definiert, aber **noch nicht gebaut und nicht verfügbar** – **keine** geplante Funktion als aktuelle Funktion darstellen):

- Regionale Eventsuche mit sinnvollen Filtern (Region, Zeit, Kategorie, Preis, kostenlos, Tempo, Barrierefreiheit, „Alleine willkommen", verfügbare Plätze).
- Geprüfte Anbieter und **vor Veröffentlichung von Menschen geprüfte** Anlässe. `TO VERIFY` – die **Prüfmassnahmen** der Anbieterprüfung sind teils **extern zu prüfen**; „geprüft" beschreibt den vorgesehenen Prüfprozess und ist **keine** zugesagte Gewährleistung.
- Vollständige, vergleichbare Angaben je Anlass (verbindlicher Pflichtangabensatz).
- Verbindliche Anmeldung/Buchung mit Mindest-/Höchstteilnehmerzahl; Buchung erfordert ein Konto.
- Warteliste mit Nachrücken, wenn ein Platz frei wird.
- Möglichkeit, eine Buchung vor dem Anlass an eine andere Person zu übertragen.
- Klare, standardisierte Stornooptionen (drei feste Modelle; interne Detailsätze `CONFIDENTIAL`). `TO VERIFY` – fachlicher Planungsgrundsatz aus **D-18**; Ausnahmen, Gebührenanteile und die **rechtliche Formulierung sind extern zu prüfen**. **Kein** rechtlich bestätigter Klauseltext.
- Bei Absage oder Ausfall durch den Anbieter: **vollständige Rückerstattung als Standard**; ein Ersatztermin kann zusätzlich angeboten werden, muss aber nicht angenommen werden.
  > **`TO VERIFY` – ausdrücklicher Vorbehalt zu dieser Regel:** Dies ist ein **fachlicher Planungsgrundsatz** aus den Entscheiden **D-42/D-43**, deren Status „im fachlichen Grundsatz akzeptiert, **extern zu prüfen**" lautet. Die **rechtliche Ausgestaltung** (Konsumentenschutz, Vertragsrecht, Zahlungs-/Erstattungsprozess, rechtliche Formulierung, Abgrenzung höherer Gewalt und sonstiger Absagegründe) ist **extern zu prüfen und nicht abgeschlossen**. Diese interne Planungsbeschreibung ist **kein rechtlich bestätigter Klauseltext** und **keine für öffentliche Texte freigegebene Erstattungszusage**.
- Sicherer, zurückhaltender Steckbrief statt öffentlichem Social-Profil.
- Moderierter, ereignisbezogener Gruppenchat für bestätigte Teilnehmende (keine freien 1:1-Nachrichten).
- Strukturierte Bewertung von Anlässen/Anbietern in mehreren Kategorien, erst ab einer Mindestzahl bestätigter Bewertungen sichtbar (keine öffentliche Teilnehmerbewertung, keine öffentlichen Freitextkommentare).
- Zugänglichkeits- und Mobilitätsangaben pro Anlass.
- Angehörigenbuchung und menschliche Unterstützung (Rückrufservice in Supportzeiten).

**Abgrenzung des geplanten Starts (`PUBLIC`):** Der Start ist als Website bzw. **installierbare Web-App** geplant. Eine **native App ist nicht Bestandteil des geplanten Starts** und wird **nicht** zugesagt. Ebenfalls nicht Bestandteil: Weiterleitung an externe Buchungssysteme, Teil-/Ratenzahlungen, offener 1:1-Chat, private Gastgeber, bezahlte Hervorhebung.

> Konkrete Fristen, Schwellenwerte, Zeitpläne und Betriebsparameter sind **nicht** öffentlich (§33).

---

## 13. Produktstatus / Reifegrad

**In Konzeption.** `PUBLIC`.

- Die internen Dokumente sind **Arbeitsstand in Gründerprüfung und nicht freigegeben**.
- **Im geprüften Repository liegt bislang kein Anwendungscode vor. Die beschriebenen Fähigkeiten sind fachlich definiertes Soll-Verhalten.**
- Vorgesehenes Vorgehen: regionaler **Concierge-Pilot** vor umfassendem Softwarebau, danach Start als Website bzw. installierbare Web-App.
- **Keine** lancierte Plattform, **keine** App, **keine** nachgewiesene Live-Domain, **keine** Gründung, **keine** geprüfte Marken- oder App-Store-Verfügbarkeit.

Nicht als Beta/verfügbar/lanciert darstellen. Eine ausgearbeitete interne Spezifikation ist **kein** Reifegrad- oder Verfügbarkeitsnachweis.

---

## 14. Öffentliche Nachweise

**Keine** öffentlichen Proof Points vorhanden. `NOT DEFINED` / `OPEN`.

- Keine Pilotresultate, keine Kennzahlen, keine realen Kunden, keine Referenzen, keine Partnerschaften, keine Auszeichnungen, keine Tests, keine messbare Wirkung.
- Belegbar ist **nur** der demografische/gesellschaftliche Marktkontext (§4), nicht produktbezogene Wirkung.

**Keine erfundenen Proof Points verwenden.**

---

# MARKENIDENTITÄT

> **Grundlegender Hinweis (zentral, gegenüber v0.1.0 geändert):** Es existieren inzwischen **zwei finale, kanonische Markenmaster** (Signet und Wortmarke) als **interne** Repository-Assets – siehe §15. Eine **vollständige visuelle Markenidentität existiert weiterhin nicht**: Typografie, Formsprache, Muster, Bildsprache, Ikonografie, Motion und ein ausgebautes Farbsystem sind **`NOT DEFINED`** bzw. `OPEN`.
>
> **Entscheidend für die öffentliche Verwendung:** ADR-001 und D-02 bleiben vollständig in Kraft. ADR-001 hält fest, dass *„Marketing-/Logoarbeiten bis Abschluss von D-02 Stufe 2 [professionelle markenrechtliche Ähnlichkeitsrecherche] zurückzuhalten"* sind. Die interne Verankerung der Master ist **keine** Freigabe für öffentlichen Markenaufbau, Markenanmeldung oder öffentliche Ausspielung. Die Master sind daher für die KS-Projektseite und jede andere öffentliche Verwendung **`INTERNAL ONLY`**.
>
> Das bedeutet für die KS-Projektseite: Sie kann **noch nicht** im eigenen Markenstil des Produkts gebaut werden – weder durch Erfindung fehlender Tokens noch durch öffentliche Verwendung der vorhandenen Master. Fehlende Brand-Information wird **nicht erfunden** und **nicht durch KS-Stil ersetzt**. Bis die visuelle Identität definiert **und** die markenrechtliche Prüfung abgeschlossen ist, gelten nur die **belegten, nicht-visuellen Haltungsprinzipien** (Ton, Positionierung, Zugänglichkeit) aus §22.

## 15. Masterlogo

**Vorhanden, intern.** `INTERNAL ONLY` (gegenüber v0.1.0 geändert: dort `NOT DEFINED`).

Im Repository liegen **zwei finale, vom Gründer bereitgestellte kanonische Markenmaster**:

| Asset | Zweck | Status |
|---|---|---|
| Signet (kompaktes Doppel-L-Zeichen) | kompaktes Zeichen; Quelle für spätere Favicon-/App-Icon-Ableitungen | vorhanden, final, kanonisch · `INTERNAL ONLY` |
| Wortmarke (horizontal) | vollständige horizontale Markendarstellung | vorhanden, final, kanonisch · `INTERNAL ONLY` |

**Verbindliche Referenz:** [`docs/brand/BRAND_ASSETS.md`](../brand/BRAND_ASSETS.md) ist die **einzige** Quelle für Asset-Fakten (Pfade, ViewBox, Bytegrössen, SHA-256-Prüfsummen, Verwendungs- und Schutzregeln). Diese Datei **dupliziert** diese Angaben bewusst nicht. Die projektweiten Schutzregeln stehen zusätzlich in [`CLAUDE.md`](../../CLAUDE.md).

**Weiterhin `OPEN`:** Logovarianten, Dark-/Light-Fassungen, monochrome Fassung, Schutzraum, Mindestgrösse, Favicon- und App-Icon-Ableitungen. Diese existieren **nicht** und werden nur auf ausdrücklichen Auftrag als **separate** Ableitungen erzeugt; die Master bleiben unverändert.

**Regeln:**

- Die Master **nicht** öffentlich ausspielen, solange D-02 Stufe 2 nicht abgeschlossen ist (`TO VERIFY`/extern). Sie sind intern verankert, nicht öffentlich freigegeben.
- Kein alternatives Logo generieren, annehmen oder aus dem Namen ableiten.
- Die Master **nicht** verändern, neu speichern, optimieren, minifizieren, nachzeichnen, umfärben oder inline in Komponenten kopieren.
- Aus der Existenz der Master **keine** markenrechtliche Klärung, Registrierung oder Konfliktfreiheit ableiten – es wird **keine** behauptet. Entsprechend [`docs/brand/BRAND_ASSETS.md`](../brand/BRAND_ASSETS.md) werden auch **keine geklärten oder übertragenen Rechte** behauptet; die Existenz der Master belegt insbesondere **keine geklärten oder übertragenen Nutzungsrechte**. Diese Datei nimmt dazu **keine eigene rechtliche Bewertung** vor.

## 16. Farbwelt

**Teilweise vorhanden.** `INTERNAL ONLY` für die Logofarben · `OPEN` für das Farbsystem (gegenüber v0.1.0 geändert: dort vollständig `NOT DEFINED`).

- Aus den Markenmastern sind **zwei Markenfarben fixiert** (ein Korallrot und ein Pflaume-/Violettton). Die verbindlichen Hex-Werte stehen in [`docs/brand/BRAND_ASSETS.md`](../brand/BRAND_ASSETS.md) und werden hier nicht dupliziert. Sie sind **Logofarben**, keine freigegebene öffentliche Palette.
- **Weiterhin `OPEN`:** vollständiges Farbsystem – Sekundär- und Akzentfarben, Hintergrund- und Textfarben, funktionale Web-Tokens, Dark-/Light-Definitionen, Kontrast- und Zustandsregeln.

**Regel:** Keine Farbpalette erfinden, keine Palette aus den zwei Logofarben hochrechnen und als „Frello-Farbwelt" ausgeben, keine KS-Palette „umfärben". Einzige belegte Anforderung an ein späteres Farbsystem: **hoher Kontrast und gute Lesbarkeit für die Zielgruppe 65+** (§22) – dies ist eine Anforderung, **kein** definiertes Farbsystem.

## 17. Typografie

`NOT DEFINED` / `OPEN` (unverändert). Keine primäre, sekundäre, Display-, Body-, UI- oder Mono-Schrift definiert; keine Weights, kein Tracking, keine Headline-/Body-Regeln.

**Präzisierung:** Die Buchstabenformen der Wortmarke sind **Bestandteil des Master-Assets** und **keine** festgelegte, lizenzierte Textschrift. Aus der Wortmarke darf **keine** Schriftwahl abgeleitet oder behauptet werden.

**Regel:** Keine Schrift erfinden, keine Ersatzschrift setzen. Lizenz-/Technikfragen sind ungeklärt. Einzige belegte Anforderung: **gut lesbar, ausreichend gross, seniorengerecht** (§22) – als Wirkungsanforderung, nicht als Schriftfestlegung. Gewünschte Wirkung (aus Positionierung ableitbar, nicht als Font entschieden): eher **warm, ruhig, klar, vertrauenswürdig** statt technisch-kühl. Weiterhin `OPEN`.

## 18. Formsprache

`NOT DEFINED` / `OPEN`. Keine charakteristischen Formen, Linien, Module, Raster oder dokumentierte logo-abgeleitete Formensprache.

**Korrektur gegenüber v0.1.0:** Dort war begründet, es existiere „kein Logo, aus dem abstrahiert werden könnte". Das trifft nicht mehr zu – die Master existieren (§15). Daraus folgt aber **keine** definierte Formsprache: eine Abstraktion ist bisher **nicht** erarbeitet und wäre eine **Ableitung**, die nur auf ausdrücklichen Auftrag und nach den Regeln in [`docs/brand/BRAND_ASSETS.md`](../brand/BRAND_ASSETS.md) entstehen darf.

**Regel:** Keine Formsprache erfinden, nicht eigenmächtig aus den Mastern abstrahieren, nicht aus dem Namen ableiten. `OPEN`.

## 19. Muster / Pattern

`NOT DEFINED` (unverändert). Keine Patterns, Texturen, Raster, Linienfelder oder Hintergrundmuster definiert. `OPEN`.

## 20. Bildsprache

`NOT DEFINED` / `OPEN` (unverändert). Keine Bildsprache (Fotografie, Illustration, Renderings, UI-Screens, Farbbehandlung, Licht, Perspektive, Crop) definiert.

**Inhaltliche Leitplanke, falls später Bildsprache entsteht (aus §22 abgeleitet, `PUBLIC` als Haltung):** reale, positive, würdevolle Darstellung aktiver Menschen; **keine** stigmatisierende, mitleidige oder „defizitäre" Darstellung des Alters; keine Stockfoto-Klischees von Einsamkeit. Ob überhaupt Menschenbilder verwendet werden, ist `OPEN`.

## 21. Ikonografie

`NOT DEFINED` (unverändert). Kein Icon-Stil, keine Strichstärke, keine Herkunft definiert. Keine generische Icon-Library als Markenidentität behaupten. `OPEN`.

## 22. Art Direction

Die visuellen Tokens sind bis auf die Master und ihre Logofarben `NOT DEFINED` (§15–21). Belegbar ist jedoch die **Haltung/Wirkung** aus der beschlossenen Positionierung (`PUBLIC`) – sie ist der einzige verbindliche Rahmen, bis die visuelle Identität existiert:

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

`NOT DEFINED` (unverändert). Kein Bewegungsprinzip, keine Geschwindigkeit, kein Timing, keine Scroll-/Hover-/Load-Regeln definiert.

**Verbindliche Rahmenregel (unabhängig von späterer Definition, `PUBLIC`):** `prefers-reduced-motion` respektieren; Motion darf **niemals** die einzige Informationsquelle sein; ruhig und zurückhaltend statt aufdringlich (passend zur Zielgruppe). Konkrete Motion-Regeln: `OPEN`.

## 24. Interaktionssprache

`NOT DEFINED` / `OPEN` (unverändert). Keine UI-Sprache für Buttons, Links, Hover, Focus, Cards, Navigation, Formulare definiert.

**Verbindliche Rahmenanforderung (`PUBLIC`, aus Zielgruppe):** grosse Klickflächen, klare Fokuszustände, gut lesbare Beschriftungen, einfache und fehlertolerante Bedienung, Barrierefreiheit (WCAG-Grundsätze). Konkrete Ausgestaltung: `OPEN`. Frello muss **nicht** dieselbe UI-Sprache wie Kreativ Solutions verwenden.

---

# MARKENÜBERSETZUNG FÜR DIE KS-PROJEKTSEITE

## 25. KS-Projektseite — Markenregeln

Die Seite `kreativ-solutions.ch/<produkt>` ist eine Produkt-/Markenpräsentation **innerhalb** von Kreativ Solutions. Sie soll sich nach **dem Produkt** anfühlen – nicht „KS-Seite + andere Farbe".

**Grundsatz:** Auf der Produktseite ist **Frello der visuelle Held**; Kreativ Solutions bleibt als **Herkunft / Dachmarke** sichtbar.

**Welche Produktmarken-Elemente sollen sichtbar werden?**

Sobald sie existieren **und** öffentlich freigegeben sind: Produktlogo, Produktfarben, Typografie, Formsprache, Motion, Pattern, Bildsprache, Interaktionsdetails.

> **Aktuelle Einschränkung (wichtig, gegenüber v0.1.0 präzisiert):** Es bestehen **zwei** Gründe, warum die KS-Projektseite derzeit **nicht** im eigenen Frello-Markenstil gebaut werden kann:
> 1. **Nicht vorhanden:** Typografie, Formsprache, Pattern, Bildsprache, Ikonografie, Motion und ein ausgebautes Farbsystem sind `NOT DEFINED`/`OPEN` (§16–24).
> 2. **Vorhanden, aber nicht freigegeben:** Signet, Wortmarke und die Logofarben existieren, sind aber `INTERNAL ONLY` – ADR-001/D-02 Stufe 2 hält die öffentliche Markenverwendung zurück (§15).
>
> Daraus folgt:
> - Es werden **keine** Frello-Farben/-Schriften/-Logos erfunden.
> - Die vorhandenen Master werden **nicht** öffentlich ausgespielt, eingebettet, verlinkt oder in Vorschaubilder, Favicons, OpenGraph- oder Social-Assets übernommen.
> - Es wird **nicht** ersatzweise der KS-Stil als „Frello-Stil" ausgegeben.
> - Sichtbar/verwendbar sind nur: **Name, Beschreibung, Positionierung, Nutzen, Wirkung, Nutzungssituationen, das erklärbare Funktionsprinzip** und die **Haltungs-Art-Direction** aus §22.
> - Fehlende oder gesperrte Brand-Bausteine werden auf der Seite (bzw. im Übergabebericht an KS) als `OPEN` bzw. `INTERNAL ONLY` markiert, nicht kaschiert.

## 26. Intensität der Markenübernahme

Empfohlenes Prinzip (`PUBLIC` als Regel; die konkrete visuelle Umsetzung ist erst nach Definition der Identität **und** nach Abschluss der markenrechtlichen Prüfung möglich):

- **Home Preview (KS-Startseite):** **subtil.** Nur dezenter Produkthinweis (Name + Kurzbeschreibung), im KS-Rahmen.
- **Projekte-Seite (`/projekte`):** **deutlich.** Frello als eigenständiges Projekt erkennbar (Name, Positionierung, Kurzwirkung), aber im KS-Layout eingebettet.
- **Produktseite (`/<produkt>`):** **vollständig** – sobald die Produktidentität existiert und öffentlich freigegeben ist. Bis dahin: inhaltlich vollständig (Text/Struktur), visuell im zurückhaltenden, neutral-warmen Rahmen gemäss §22, **ohne erfundene Marken-Tokens und ohne die internen Master**.

Nur übernehmen, soweit es zur Marke und zur bestehenden KS-Architektur passt.

## 27. Übergang KS → Produkt

Gewünschtes Gefühl (`PUBLIC` als Intention, keine starre Template-Regel; visuelle Mittel erst nach Identitätsdefinition und Markenfreigabe):

- Der Wechsel soll **spürbar, aber ruhig** sein: von der KS-Dachmarke hin zur wärmeren, zugänglichen Produktwelt.
- Die KS-Navigation/Herkunft bleibt erhalten; der inhaltliche Fokus verengt sich auf Frello.
- Farb-/Typo-/Formwechsel: **erst möglich, wenn Frello-Tokens definiert und freigegeben sind** (`OPEN`).

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
- **Zugänglichkeit** (Tempo, Barrierefreiheit) als klare, ikonisch vermittelbare Angaben;
- **Vertrauen** (verifizierte Anbieter, menschliche Prüfung, Moderation) als sichtbares Prinzip.

> Die Darstellung erfolgt mit neutralen, zurückhaltenden Mitteln – **nicht** mit den internen Markenmastern (§15/§25).

## 31. Was ausdrücklich NICHT als Website-Text erscheinen soll

Nicht als sichtbarer Seitentext ausgeben (`CONFIDENTIAL`, siehe §33):

- interne Strategie, Governance und Entscheidungslogik (D-IDs, ADRs, Decision-Status, Spezifikations-IDs);
- Produktphilosophie/Markenarchitektur-Erklärungen als solche;
- technische Interna und operative Roadmap;
- Provisions-/Preismechanik und Finanzmodelle;
- vertrauliche Sicherheits-/Moderationsmechanik;
- rechtliche/steuerliche Vorbehalte und Risikoregister;
- interne Brand-Asset-Fakten (Pfade, Prüfsummen, Bytegrössen, Schutzregeln).

**Zusätzlich nicht als Website-Text übernehmbar (Prüfstatus beachten):**

- die mit `TO VERIFY` gekennzeichneten **Storno-, Absage- und Erstattungsregeln** (§12) als Zusage, Anspruch, AGB-Text oder Werbeaussage. Sie dürfen allenfalls als **beabsichtigte, noch rechtlich zu prüfende Regelung** beschrieben werden, nie als geltendes Versprechen;
- die **Anbieterprüfung** (§12) als gewährleistete Sicherheit oder geprüfte Qualität;
- die **Marktzahlen aus §4** und daraus abgeleitete Grössen-, Wachstums- oder Anteilsaussagen, solange sie nicht für externe Verwendung verifiziert sind.

---

# PUBLIC / CONFIDENTIAL

## 32. PUBLIC Allow-list

Ausdrücklich öffentlich verwendbar:

- **Produktname** „Frello" und die **Herkunft** „Produkt von Kreativ Solutions".
- **Kurzbeschreibung/Positionierung:** Schweizer Plattform für gemeinsame Erlebnisse; entdecken, verbindlich buchen, gemeinsam besuchen; **einfach, sicher, in der Nähe**.
- **Zielgruppe:** primär 65+, offen für alle Erwachsenen; Angehörige; geprüfte gewerbliche/öffentliche/gemeinnützige Anbieter.
- **Problem, Sinn, Nutzen, Wirkung** (§4–7).
- **Erklärbares Funktionsprinzip** (§9) und **öffentliche Fähigkeiten** (§12) unter MVP-Vorbehalt – **ohne** die mit `TO VERIFY` gekennzeichneten Storno-, Absage-, Erstattungs- und Anbieterprüfungs-Aussagen, die nur als Planungsgrundsatz und nicht als Zusage verwendet werden dürfen.
- **Abgrenzungen** (§10) und **Nutzungssituationen** (§11).
- **Produktstatus:** „in Konzeption / vor Pilot" – ehrlich, ohne Reife zu behaupten.
- **Haltungs-Art-Direction** (§22): warm, respektvoll, zugänglich, plus Anti-Patterns.

**Nicht** in der Allow-list – und damit nicht öffentlich verwendbar:

- die **Markenmaster**, die **Logofarben** und alle Asset-Fakten (§15/§16, `INTERNAL ONLY`);
- die **Marktzahlen aus §4** und jede daraus abgeleitete Aussage (Grössenangaben, Wachstumsaussagen, Anteile), solange sie `TO VERIFY` sind und nicht für externe Verwendung verifiziert wurden. Der **qualitative** Problembefund aus §4 (fragmentierte Auffindbarkeit, Hürde „mit wem gehe ich hin?", fehlende Verbindlichkeit und Zugänglichkeitsinformationen) bleibt verwendbar, da er nicht auf diesen Zahlen beruht;
- **rechtsverbindliche Zusagen** zu Storno, Absage, Erstattung, Sicherheit oder Qualität (§2/§12).

## 33. CONFIDENTIAL / NOT PUBLIC

Diese Informationen dürfen **nicht** auf KS, in Metadata, SEO, OpenGraph, Alt-Texten, aria-labels oder in öffentlichen Präsentationen erscheinen:

- **Konkrete Provisions-/Preissätze** und Preisbenchmarks – interne Pilotgrundlage in Validierung.
- **Finanzmodelle, Unit Economics, Szenarien, Beispielrechnungen.**
- **Pilot-Interna:** Dichteschwellen, Pilotstädte und deren Startlogik, Pilotdauer, Zeitpläne, interne Kennzahlen/North-Star-Definition, Supportzeiten als Zusage.
- **Interne Governance:** Entscheidungs-IDs (**D-01…D-46**), ADR-Inhalte (**ADR-001…ADR-008**), Decision-Status, IDs der Produktspezifikation, Annahmen-/Quellenregister, Source-of-Truth-Ordnung.
- **Konkrete Fristen und Schwellen des Produktverhaltens** (Storno-, Nachrück-, Durchführungs-, Übertragungs- und Bewertungsfristen und -grenzen) über die abstrakte Darstellung in §12 hinaus.
- **Rechtliche/steuerliche/regulatorische Vorbehalte** und der **Risikoregister**-Inhalt.
- **Vertrauens-/Sicherheitsmechanik im Detail** (Verifikations-/Moderations-/Anti-Betrugs-Interna) über die abstrakte Prinzipdarstellung hinaus.
- **Interne Profil-/Datenfelder**, die als „nicht öffentlich" markiert sind.
- **Interne Markenassets** (§15/§16): Signet, Wortmarke, Logofarben, Pfade, Bytegrössen, SHA-256-Prüfsummen und Schutzregeln. Weder die Dateien noch die Asset-Fakten sind öffentlich; die blosse Existenz darf **nicht** als Markenfreigabe, Registrierung oder Konfliktfreiheit dargestellt werden.
- **Domainstatus als „gesichert/live"**, solange kein Registrar-Nachweis vorliegt.
- **Marken-/App-Store-Verfügbarkeit** als geprüft oder gesichert.
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

- **Markenrechtliche Freigabe der vorhandenen Master** (Abschluss von D-02 Stufe 2) – **Voraussetzung**, damit Signet, Wortmarke und Logofarben öffentlich verwendet werden dürfen;
- die **restliche** visuelle Identität (Typografie, Formsprache, Farbsystem, Motion, Bildsprache, Ikonografie) – **Voraussetzung**, damit die KS-Seite im echten Produktstil gebaut werden kann;
- nachgewiesene Domainregistrierung/Live-Gang von `frello.ch`;
- Ergebnis der App-Store-Namensprüfung;
- öffentlich nennbare neue Funktionen (nach Beschluss);
- reale Pilotresultate, Kennzahlen, reale Kunden, Referenzen, Partnerschaften, Integrationen;
- Launch/öffentliche Verfügbarkeit je Region.

## 37. Aktualisierungsregeln

`PUBLIC_PRESENTATION.md` ist eine **lebende Datei** und wird aktualisiert, sobald sich öffentlich relevante Fakten ändern – insbesondere bei: Produktstatus/Launch, Domainnachweis, neuer öffentlich freigegebener Funktion, Abschluss der markenrechtlichen Prüfung, Marken-/Logo-/Typografie-/Farb-/Motion-Definition, realen Kennzahlen, Referenzen, öffentlichen Integrationen.

Vorgehen: zuerst Änderung/Beleg in den internen Registern (`docs/business/`) erfassen, dann diese Datei aktualisieren, Version und Datum in §1 hochzählen und §38 ergänzen. Keine freigegebene Information verlieren, keine historische Entscheidung löschen. **Eine Freigabe gilt immer nur für die konkret freigegebene Fassung**; eine geänderte Fassung benötigt eine neue Freigabe.

## 38. Änderungsverlauf

### 2026-10-01 — v0.2.0 (Entwurf – aktualisierte Fassung zur Freigabe)
- **Änderung:** Abgleich der Erstanlage auf den aktuellen internen Dokumentenstand: Quellenbasis von Businessplan V0.2/D-01…D-30/ADR-001…007 auf **V0.3/D-01…D-46/ADR-001…008** sowie die fachliche Produktspezifikation V0.1 (Entwurf) umgestellt; öffentliche Fähigkeiten (§12) auf den inzwischen definierten Leistungsumfang präzisiert, mit ausdrücklicher Abgrenzung des geplanten Starts; Markenidentität (§15–18, §22, §25–27, §32–33, §36) auf die inzwischen intern verankerten kanonischen Markenmaster korrigiert – vorhanden, aber `INTERNAL ONLY`; Marktkontext (§4) mit Herausgeberbelegen und Zitierregel versehen; Marken-/App-Store-Status in §2 ausdrücklich als ungeprüft ausgewiesen.
- **Grund:** Die Erstanlage beschrieb Logo, Farben und Formsprache als nicht existierend und stützte sich auf einen überholten Entscheidungsstand. Beides traf nicht mehr zu.
- **Nachkorrekturen innerhalb v0.2.0 (01.10.2026), aus der Inhaltsprüfung B-1…B-5:**
  - **B-1:** Storno-, Absage- und Erstattungsregeln sowie die Anbieterprüfung in §12 an ihrer Textstelle als fachliche Planungsgrundsätze mit Status `TO VERIFY` gekennzeichnet (kein rechtlich bestätigter Klauseltext, keine freigegebene Zusage); entsprechende Grenzen in §2, §31 und §32 ergänzt.
  - **B-2:** Marktkontext in §4 nach Bevölkerungsbestand und Szenarien getrennt; «1,8 Mio.» als unverifizierte, aus zwei Altersgruppen summierte Research-Angabe gekennzeichnet; fehlendes Publikationsdatum und fehlende Bevölkerungsdefinition als ungeklärt ausgewiesen; «Bevölkerungsstand 2025» nicht als belegtes Bezugsjahr übernommen; Szenario 2025–2055 ausdrücklich als Szenario ohne Prognosegarantie und mit Datumsangabe «laut Register» geführt; Prüfvorbehalt des Quellenregisters aufgenommen; unverifizierte Zahlen und daraus abgeleitete Aussagen von der öffentlichen Textübernahme ausgeschlossen (§32).
  - **B-3:** §15 um die fehlende Rechteabgrenzung ergänzt (keine geklärten oder übertragenen Nutzungsrechte), ohne eigene rechtliche Bewertung.
  - **B-4:** §13 um die Feststellung ergänzt, dass im geprüften Repository kein Anwendungscode vorliegt.
  - **B-5:** Die Aussage zur internen Ausarbeitung in §13 entfernt, ohne Ersatzbehauptung zum Reifegrad.
  - Keine neuen Gründerentscheide, keine neue D-ID, keine neuen Modelle, Bedingungen oder Leistungsversprechen; keine Änderung an D-02/ADR-001 und keine Registeränderung.
- **Freigabestatus:** **Entwurf – nicht freigegeben.** Die Freigabe von v0.1.0 gilt **nicht** für diese Fassung. Keine neuen Gründerentscheide, keine Rechtsprüfung, keine Markenfreigabe.

### 2026-09-01 — v0.1.0
- **Änderung:** Erstanlage der kanonischen Datei `PUBLIC_PRESENTATION.md` aus Businessplan V0.2, Entscheidungsregister, ADR-001…007 sowie Research-Analyse.
- **Grund:** Etablierung der einzigen freigegebenen öffentlichen Produktquelle für die KS-Projektseite und weitere öffentliche Präsentationen.
- **Freigabestatus:** kuratiert; nur PUBLIC-Allow-list-Inhalte öffentlich. Sämtliche visuellen Marken-Bausteine waren zu diesem Zeitpunkt als `NOT DEFINED`/`OPEN` gekennzeichnet (Stand 01.09.2026; durch v0.2.0 korrigiert).

---

## 39. Verbindliche Regel für spätere KS-Sessions

`PUBLIC_PRESENTATION.md` ist die **kanonische öffentliche Produktquelle**.

- Eine Claude-Sitzung im Kreativ-Solutions-Repo darf **nicht** eigenmächtig andere interne Frello-Produktdateien interpretieren oder veröffentlichen.
- Fehlt eine Information: **nicht erfinden.**
- Fehlt Design-/Brand-Information: **nicht durch KS-Stil ersetzen** – stattdessen `OPEN` / `TO VERIFY` melden.
- Ist Brand-Information vorhanden, aber `INTERNAL ONLY` (Master, Logofarben): **nicht öffentlich verwenden**, auch nicht in Favicon, OpenGraph, Vorschaubild oder Alt-Text.
- Die KS-Projektseite muss sich wie die **Produktmarke Frello** anfühlen – **nicht** wie eine umgefärbte Kreativ-Solutions-Seite. **Solange die visuelle Frello-Identität unvollständig und die vorhandenen Master markenrechtlich nicht freigegeben sind, ist der ehrliche Zustand: Inhalt vollständig, Visuals zurückhaltend/neutral-warm gemäss §22, offene und gesperrte Punkte transparent gemeldet.** Die nötigen nächsten Schritte zur „echten" Produktseite sind der Abschluss der markenrechtlichen Prüfung und die Definition der restlichen Identität.

---

## Selbstkritik (Prüfprotokoll)

| # | Prüffrage | Ergebnis |
|---|---|---|
| 1 | Versteht ein externer Designer das Produkt? | Ja (§3–13). |
| 2 | Problem, Nutzen, Wirkung klar? | Ja (§4–7). |
| 3 | Klar, was öffentlich gesagt werden darf? | Ja (§32). |
| 4 | Klar, was vertraulich bleibt? | Ja (§33–34). |
| 5 | Masterlogo eindeutig auffindbar? | Ja – zwei kanonische Master vorhanden, Referenz [`docs/brand/BRAND_ASSETS.md`](../brand/BRAND_ASSETS.md); **öffentliche Verwendung gesperrt** (`INTERNAL ONLY`, §15). |
| 6 | Farben exakt dokumentiert? | Teilweise – zwei Logofarben aus den Mastern fixiert und in `BRAND_ASSETS.md` dokumentiert; vollständiges Farbsystem `OPEN` (§16). |
| 7 | Typografie eindeutig? | Nein – `OPEN`; Wortmarken-Buchstabenformen sind Asset-Bestandteil, keine Schriftwahl (§17). |
| 8 | Formsprache verständlich? | Nein – nicht erarbeitet; Abstraktion aus den Mastern wäre eine nur auf Auftrag zulässige Ableitung (§18). |
| 9 | Pattern dokumentiert? | Nicht vorhanden (§19). |
| 10 | Bildsprache dokumentiert? | Nicht vorhanden; Haltung dokumentiert (§20). |
| 11 | Motion dokumentiert? | Nur Rahmenregel (Reduced Motion); Rest `OPEN` (§23). |
| 12 | Anti-Patterns dokumentiert? | Ja (§22). |
| 13 | Kann eine KS-Seite im echten Produktstil gebaut werden? | **Noch nicht** – aus zwei Gründen: restliche Identität fehlt, und die vorhandenen Master sind markenrechtlich nicht freigegeben; beides ehrlich benannt (§25/§39). |
| 14 | Müsste der Designer raten? | Nur bei Visuals – dort ausdrücklich `OPEN`, **nicht** raten. |
| 15 | Nur „KS in anderer Farbe"? | Ausdrücklich untersagt (§22/§25/§39). |
| 16 | Klar, was besser gezeigt als erklärt wird? | Ja (§30). |
| 17 | Ungeklärte Punkte als `OPEN` markiert? | Ja, durchgängig; gesperrte als `INTERNAL ONLY`. |
| 18 | Keine internen Fakten versehentlich `PUBLIC`? | Geprüft – Provision/Finanzen/Pilot-Interna/Governance/Fristen/Brand-Asset-Fakten als `CONFIDENTIAL` (§33). |
| 19 | Keine Verfügbarkeit behauptet? | Geprüft – Marke, Domain und App-Store ausdrücklich als ungeprüft ausgewiesen (§2/§13/§33). |
| 20 | Freigabe korrekt abgegrenzt? | Ja – v0.2.0 ist **Entwurf zur Freigabe**; die Freigabe von v0.1.0 wird nicht übertragen (§1/§37/§38). |
| 21 | Offene Rechtsfragen als abgesicherte Zusage dargestellt? | Nein – Storno/Absage/Erstattung und Anbieterprüfung sind an ihrer Textstelle als `TO VERIFY`-Planungsgrundsätze gekennzeichnet und von der öffentlichen Übernahme als Zusage ausgeschlossen (§2/§12/§31/§32). |
| 22 | Marktzahlen belegt und für externe Verwendung freigegeben? | **Nein** – alle Zahlen in §4 sind unverifizierte Research-Übernahmen (`TO VERIFY`); Publikationsdatum und Bevölkerungsdefinition sind ungeklärt; Verwendung erst nach Verifikation (§4/§32). |
| 23 | Reifegrad des Repositorys korrekt dargestellt? | Ja – es liegt kein Anwendungscode vor; die Fähigkeiten sind Soll-Verhalten (§12/§13). |
