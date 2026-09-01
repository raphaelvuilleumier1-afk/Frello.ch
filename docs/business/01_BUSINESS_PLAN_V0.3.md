# Businessplan Frello – Version 0.3

**Stand:** 31. August 2026 · **Status:** Konsolidierte Gründerentscheide (28.08.2026, D-01–D-30) und die zweite Tranche (31.08.2026, D-31–D-46) eingearbeitet; Arbeitsdokument zur Gründerprüfung (nicht investorenfinal) · **Startmarkt:** Deutschschweiz · **Mögliche spätere Expansion:** Deutschland (an Trigger gebunden)

**Zugehörige Dokumente:** [Business-README](./README.md) · [Offene Gründerentscheidungen](./02_OPEN_FOUNDER_DECISIONS.md) · [Annahmenregister](./03_ASSUMPTION_REGISTER.md) · [Quellenregister](./04_SOURCE_REGISTER.md) · [ADR-Verzeichnis](./decisions/README.md) · [Deep-Research-Analyse](../research/Senioren_Erlebnisplattform_Deep_Research.md)

> **Versionshinweis:** V0.1 = Erstentwurf (alle Kernparameter offen). V0.2 = Einarbeitung des ersten konsolidierten Gründerentscheids vom 28.08.2026 (D-01–D-30). **V0.3 (aktuell)** arbeitet die zweite Tranche vom **31.08.2026 (D-31–D-46)** ein: fachliche MVP-Entscheide (Eventfelder/Filter/Freigabe, Bewertungsdetails, Supportzeiten, Pilotdauer, Buchungs-Ausnahmen) und **drei ausdrückliche Änderungen beschlossener Entscheide** – D-37 ändert D-29 (gemeinsamer Pilotstart), D-39 nimmt D-13 aus dem MVP-Scope, D-46 ändert D-28 (Web/PWA-MVP + native App als Fast-Follow). Der Businessplan wurde entsprechend von `V0.2` auf `V0.3` umbenannt. Siehe [Entscheidungsregister](./02_OPEN_FOUNDER_DECISIONS.md) und [ADRs](./decisions/README.md). Decision-Status wie **AKZEPTIERT / AKZEPTIERT MIT VALIDIERUNG / TEILWEISE AKZEPTIERT / ZURÜCKGESTELLT / EXTERN ZU PRÜFEN** sind im [README](./README.md) erläutert; im Fliesstext erscheinen beschlossene Punkte als **[BESCHLOSSEN]** (ggf. mit Validierungs-/Prüfhinweis).

---

## 1. Dokumentstatus und Governance

Dieser Businessplan dokumentiert ausschliesslich Business-, Markt- und Produktgrundlagen. Er enthält keinen Anwendungscode und keine verbindliche Rechts-, Steuer- oder Finanzberatung.

Jede wesentliche Aussage ist einer Governance-Kategorie zugeordnet und im Text sichtbar gekennzeichnet:

| Kennzeichen | Bedeutung |
|---|---|
| **[BESCHLOSSEN]** | Vom Gründer festgelegt oder durch verbindliche Repo-Dokumente beschlossen. |
| **[HYPOTHESE]** | Begründete, noch zu validierende Annahme. |
| **[OFFEN]** | Vom Gründer zu treffende Entscheidung (siehe [Entscheidungsregister](./02_OPEN_FOUNDER_DECISIONS.md)). |
| **[EXTERN ZU PRÜFEN]** | Vor Umsetzung durch qualifizierte Fachperson zu prüfen. |
| **[MARKTERKENNTNIS]** | Belegte Markt-/Wettbewerbs-/Zielgruppenaussage (siehe [Quellenregister](./04_SOURCE_REGISTER.md)). |

**Governance-Grundregeln:**

- Eine Hypothese wird nicht durch Wiederholung zum Beschluss.
- Was hier nicht ausdrücklich als **[BESCHLOSSEN]** markiert ist, ist nicht beschlossen.
- Fehlende Zahlen erscheinen nur als explizite Szenarioannahmen und stehen im [Annahmenregister](./03_ASSUMPTION_REGISTER.md).
- Wettbewerber-Reichweiten sind Selbstauskünfte, sofern nicht unabhängig bestätigt.

**Aktueller Beschluss-Stand (Kurzüberblick, Stand 31.08.2026):** Verbindlich beschlossen sind neben Name und Leitplanken (kein Dating, reale Teilhabe statt Bildschirmzeit, respektvolle Positionierung) u. a.: Alterspositionierung **65+, offen für alle** (D-07); Pilot in der **Deutschschweiz**, parallel in **Zürich, Basel, Bern, Luzern** mit Dichteschwelle **5 Anbieter / 10 Termine je Stadt** (D-09/10/29), **gemeinsamer Start aller vier Städte erst wenn alle die Schwelle erfüllen** (D-37) und **Pilotdauer 16 Wochen** (D-36, zu validieren); **Kreativ Solutions GmbH** als geplante Betreiberin, Frello als deren Produkt, **vorbehaltlich externer rechtlicher/steuerlicher Prüfung** (D-14; eine separate Frello-Gesellschaft ist für den MVP nicht anwendbar, D-04); Frello als **Vermittler** (D-16); **8 % Standard- / 15 % betreute** Provision als **Pilotgrundlage mit Validierung** (D-11); nur **geprüfte gewerbliche/institutionelle/gemeinnützige Anbieter**, keine Privaten (D-08); Buchungs-, Storno-, Warteliste-, Profil-, Chat-, Verifikations- und Bewertungsregeln (D-15–D-27). **Nachtrag 31.08.2026 (D-31–D-46):** verbindlicher **Event-Pflichtfeldsatz** (D-31), **MVP-Pflichtfilter** (D-32), **manuelle Freigabe jedes Events** (D-33), **strukturierte Bewertungen** mit gleichgewichteter Note (D-34), **Pilot-Supportzeiten Mo–Fr 09–17** (D-35), **keine Promotion** (D-38) und **keine externen Buchungen** (D-39) im MVP, **Buchungsübertragung bis 24 h** (D-40), **keine Teilzahlungen** (D-41), **Anbieterabsage/Leistungsausfall mit voller Rückerstattung** (D-42/D-43), **Wartelisten-Broadcast <2 h** (D-44). **Technik geändert:** **Web/PWA-MVP mit verbindlicher installierbarer PWA und nativer App als Fast-Follow** (D-46, ändert D-28); Native-App-Auslösung ohne feste Schwellen per Gründer-Gesamtbewertung (D-45); die **App-Store-Namensprüfung (D-05) ist dadurch organisatorisch anstehend**. **Weiterhin offen bzw. zu validieren:** exakte Provisionssätze, dauerhafte Supportzeiten, Lead-/B2B- und Promotionsmodell (nach Pilot), Bewertungs-Detailprozesse, konkreter Native-App-Startentscheid sowie diverse **[EXTERN ZU PRÜFEN]**-Punkte (Zahlungsfluss, Vermittlerrolle, revDSG, Storno-Detail, Feedback-Einsicht, Buchungsübertragung, Absage-/Erstattungsrecht). Die Domainregistrierung `frello.ch` ist **beschlossen, aber noch nicht nachgewiesen**.

---

## 2. Executive Summary

**Frello** ist eine geplante Schweizer Internetplattform mit späterer App, über die Menschen gemeinsame Freizeitaktivitäten und Veranstaltungen **entdecken, verbindlich buchen und zusammen besuchen** können **[BESCHLOSSEN]** (Grundidee). Der primäre Fokus liegt auf **Pensionierten und älteren Menschen**; die Plattform bleibt grundsätzlich für alle erwachsenen Personen zugänglich **[BESCHLOSSEN]**.

Das gesellschaftliche Umfeld ist tragfähig: In der Schweiz leben rund **1,8 Mio. Personen ab 65 Jahren**, mit langfristig deutlich steigender Tendenz **[MARKTERKENNTNIS]**. Ein relevanter Teil der zu Hause lebenden älteren Menschen fühlt sich häufig einsam (Grössenordnung **80'000–150'000** ab 65 gemäss «connect!») **[MARKTERKENNTNIS]**, und **neun von zehn** Personen über 65 sind online **[MARKTERKENNTNIS]** – bei zugleich heterogenen digitalen Kompetenzen.

Der Markt ist **nicht konkurrenzlos**: Freizeit-Communities (Freizeit60Plus/GemeinsamErleben), Kontaktbörsen (Sozialkontakt.ch), institutionelle Anbieter (Pro Senectute) sowie Event-/Ticketplattformen (Eventfrog, Eventbrite) decken jeweils Teile ab **[MARKTERKENNTNIS]**. Wird Frello nur als «Profile + Chat + Events für 60+» verstanden, ist die funktionale Konkurrenz mittel bis hoch. Der **Differenzierungsraum** liegt in einer klaren Kombination **[HYPOTHESE]**: vertrauenswürdige, seniorengerechte **Kleingruppen-Erlebnisse** mit verifizierten Anbietern, verbindlicher Buchung, Mindest-/Höchstteilnehmerzahl, Warteliste mit Nachrücken, ereignisbezogenem Gruppenchat, Zugänglichkeits- und Mobilitätsangaben, Angehörigen- und Telefonunterstützung sowie Fokus auf **reale, wiederkehrende Teilnahme statt Bildschirmzeit**.

**Betrieb & Rolle:** Geplante Betreiberin ist die bestehende **Kreativ Solutions GmbH** (Frello als deren Produkt), **[BESCHLOSSEN MIT VORBEHALT]** / **[EXTERN ZU PRÜFEN]** (D-14); eine separate Frello-Gesellschaft ist für den MVP nicht anwendbar (D-04). Frello ist **Vermittler**; der Anbieter bleibt Veranstalter und Vertragspartner **[BESCHLOSSEN]** / **[EXTERN ZU PRÜFEN]** (D-16).

**Geschäftsmodell:** Teilnehmende nutzen Frello kostenlos; Erlöse primär über vermittelte, bezahlte Buchungen sowie optionale B2B-Leistungen. Als **Pilotgrundlage** gelten **8 % Standardprovision** und **15 % für aktiv konzipierte/betreute Formate** **[BESCHLOSSEN – im Pilot zu validieren]** (D-11). Im MVP nur **geprüfte gewerbliche/institutionelle/gemeinnützige Anbieter**, keine Privaten **[BESCHLOSSEN]** (D-08).

**Vorgehen:** Regionaler **Concierge-Pilot** in der **Deutschschweiz**, parallel in **Zürich, Basel, Bern und Luzern**; jede Stadt muss **≥5 geprüfte Anbieter und ≥10 kommende Termine** erreichen **[BESCHLOSSEN]** (D-09/10/29). **Gemeinsamer Start aller vier Städte, erst wenn alle die Schwelle erfüllen** (D-37), dann **16-wöchige Pilotmessung** (D-36, zu validieren). **Web/PWA zuerst** mit **installierbarer PWA als verbindlichem MVP-Ziel**; **native App als Fast-Follow früh/parallel vorbereitet** (D-46, ändert D-28), Freigabe per Gründer-Gesamtbewertung (D-45) **[BESCHLOSSEN]**.

**North-Star-Metric (Prüfvorschlag):** Anteil der Teilnehmenden, die innerhalb von 60 Tagen erneut ein reales Erlebnis buchen **und tatsächlich besuchen** **[HYPOTHESE]**.

**Gesamteinschätzung:** Attraktiv unter einer klaren Bedingung – Frello darf **kein generisches Seniorennetzwerk** sein, sondern muss Erlebnisbuchung, kleine Gruppen, Vertrauen, Zugänglichkeit und menschlichen Support in den Mittelpunkt stellen. Profile und Chat unterstützen das reale Treffen; sie sind nicht das Hauptprodukt.

---

## 3. Ausgangslage

- Der Gründer hat den Produkt- und Arbeitsnamen **Frello** gewählt **[BESCHLOSSEN]**.
- Es existiert eine Deep-Research-Markt- und Produktanalyse (Stand 28.08.2026), die als Research-Grundlage dient (Source-of-Truth-Rang 6).
- Am **28.08.2026** wurde ein konsolidierter Gründerentscheid eingearbeitet; er ist im [Entscheidungsregister](./02_OPEN_FOUNDER_DECISIONS.md) und in sieben thematischen [ADRs](./decisions/README.md) dokumentiert. Diese Version begründet die Struktur unter `docs/business/` inkl. `docs/business/decisions/`.
- Der Markenstatus ist früh: Die **Registrierung von `frello.ch` ist beschlossen** (D-01), aber ohne Registrar-Nachweis; eine **zweistufige Schweizer Markenprüfung** ist beschlossen (D-02); die **Deutschland/EU-Namensprüfung** bleibt **zurückgestellt** (D-03), die **App-Store-Namensprüfung** ist seit dem Nachtrag 31.08.2026 **organisatorisch anstehend** (D-05, ausgelöst durch die native-App-Fast-Follow-Entscheidung D-46). Nichts davon ist als erledigt nachgewiesen (siehe Kapitel 8).
- Geplante Betreiberin ist die **Kreativ Solutions GmbH** (Frello als deren Produkt), **vorbehaltlich externer rechtlicher/steuerlicher Prüfung** (D-14); eine separate Frello-Gesellschaft ist für den MVP nicht anwendbar (D-04, siehe Kapitel 31).

---

## 4. Gesellschaftliches Problem

Ältere Menschen verfügen oft über Zeit, Interesse und Mobilität, finden aber gemeinsame, passende und verbindliche Freizeitanlässe nur schwer. Die Auffindbarkeit lokaler Angebote ist fragmentiert (Gemeindekalender, Vereinsaushänge, Telefonanmeldungen, WhatsApp-Gruppen), und die Hürde «Mit wem gehe ich hin?» bleibt bestehen.

- Einsamkeit im Alter ist real, aber differenziert: Sie ist **nicht** mit Alleinleben gleichzusetzen; Menschen können viele Kontakte haben und sich dennoch einsam fühlen **[MARKTERKENNTNIS]**.
- Der Anteil zu Hause lebender älterer Menschen, die sich ziemlich oder sehr häufig einsam fühlen, liegt gemäss «connect!» bei rund 5–9 %, entsprechend etwa 80'000–150'000 Personen ab 65 **[MARKTERKENNTNIS]**.
- Zugleich ist «Senior» keine homogene Kategorie; der subjektiv empfundene Beginn des Altseins hat sich deutlich nach hinten verschoben **[MARKTERKENNTNIS]**.

**Problem in einem Satz:** Es fehlt ein vertrauenswürdiger, seniorengerechter Weg, konkrete gemeinsame Erlebnisse in der Nähe zu finden, verbindlich zu buchen und sicher gemeinsam zu besuchen.

---

## 5. Vision

Frello möchte dazu beitragen, dass Menschen – insbesondere im späteren Lebensabschnitt – unkompliziert, sicher und in der Nähe **gemeinsam etwas erleben** und daraus reale Zugehörigkeit gewinnen. **[HYPOTHESE]** (Formulierung, kein finaler Claim)

Strategische Leitidee (Hypothese, kein endgültiger Claim): **«Gemeinsam etwas erleben – einfach, sicher und in der Nähe.»**

---

## 6. Mission

Frello macht aus Interesse eine gemeinsame reale Teilnahme: Die Plattform kuratiert vertrauenswürdige Angebote, ermöglicht verbindliche Kleingruppen-Buchungen und begleitet Menschen bis zum tatsächlichen Erscheinen vor Ort. **[HYPOTHESE]**

Strategische Produktaussage (Hypothese, kein endgültiger Claim): **«Frello macht aus Interesse eine gemeinsame reale Teilnahme.»**

---

## 7. Geschäftsidee

Frello ist eine transaktionsfähige Erlebnis- und Begegnungsplattform – **weder** eine Dating-App **noch** ein blosser Eventkalender **[BESCHLOSSEN]** (Arbeitsannahme).

Teilnehmende können **[BESCHLOSSEN]** (Grundidee, Detailumfang je Ausbaustufe offen):

- Freizeitaktivitäten entdecken und Veranstaltungen suchen;
- sich verbindlich anmelden und kostenpflichtige Angebote buchen;
- gemeinsam mit anderen teilnehmen und über reale Erlebnisse neue Bekanntschaften aufbauen;
- wiederkehrende Gruppen und Veranstaltungen entdecken.

Anbieter veröffentlichen passende Angebote. Potenzielle Anbieter sind u. a. Restaurants, Cafés, Hotels, Ausflugsgastronomie, Reise-/Bus-/Schifffahrtsanbieter, Museen, Theater, Kinos, Kulturhäuser, Kurs-/Tanz-/Kochschulen, Kreativateliers, qualifizierte Sport-/Bewegungsanbieter, Gemeinden, Vereine, Kirchen, Bibliotheken und gemeinnützige Organisationen **[BESCHLOSSEN]** (als Angebotsspektrum). Im MVP sind **nur geprüfte gewerbliche, institutionelle oder gemeinnützige Anbieter** zugelassen; **private Veranstalter sind nicht zugelassen** **[BESCHLOSSEN]** (D-08).

**Primäre Zielsetzung:** reale, wiederholte Teilnahme, angenehme Gruppenerlebnisse, neue Bekanntschaften, lokale Zugehörigkeit sowie einfache, sichere Buchung. Die Plattform wird **nicht** auf maximale Bildschirmzeit optimiert **[BESCHLOSSEN]**.

**Keine Dating-Plattform:** Partnersuche, romantisches Matchmaking, Swipe-Mechaniken, öffentliche Beliebtheitsranglisten, Teilnehmerbewertungen und ungeschützte offene Kontaktaufnahme sind **nicht** automatisch Teil des Produkts **[BESCHLOSSEN]**.

---

## 8. Markenstatus Frello

- **Frello** ist der vom Gründer gewählte **Arbeits- und Produktname** **[BESCHLOSSEN]**.

**Beschlossene Schutz-/Prüfschritte (Umsetzung/Ergebnis noch nicht nachgewiesen), siehe [ADR-001](./decisions/ADR-001-marke-domain-schutz.md):**

- Die **Registrierung von `frello.ch`** ist beschlossen **[BESCHLOSSEN – AUSSTEHENDE UMSETZUNG]** (D-01); solange kein Registrar-Nachweis vorliegt, gilt die Domain **nicht als registriert oder gesichert**.
- Eine **zweistufige Schweizer Markenprüfung** ist beschlossen **[BESCHLOSSEN]** (D-02): Stufe 1 Basisrecherche (Swissreg, Zefix, Domains) jetzt; Stufe 2 professionelle Ähnlichkeitsrecherche **[EXTERN ZU PRÜFEN]** vor Logo-Investition/öffentlichem Markenaufbau/Anmeldung.
- **Relevante Social Handles** werden nach Basisrecherche defensiv gesichert **[BESCHLOSSEN – AUSSTEHENDE UMSETZUNG]** (D-06).
- **Deutschland/EU-Namensprüfung** bleibt **zurückgestellt** (D-03) und an den Deutschland-Trigger gebunden. Die **App-Store-Namensprüfung** ist seit 31.08.2026 **organisatorisch anstehend** (D-05): Da eine native App als Fast-Follow vorbereitet wird (D-46), ist sie nicht mehr unbestimmt zurückgestellt. **Es wird keine App-Store-Verfügbarkeit behauptet; ein Ergebnis liegt nicht vor.**
- Frello wird als **Produkt der Kreativ Solutions GmbH** geplant (D-14, **[EXTERN ZU PRÜFEN]**); ein **neuer Handelsregistereintrag «Frello» ist nicht beschlossen** und für den MVP nicht anwendbar (D-04). Die Zefix-Basisprüfung des Produktnamens ist Teil von D-02.

**Noch nicht vorhanden/verifiziert:** Registrar-Nachweis der Domain; Ergebnisse der Marken-/Handle-Recherchen; Logo, visuelle Identität und definitiver Claim **[OFFEN]/[EXTERN ZU PRÜFEN]**.

**Unzulässig** (und in diesem Plan nicht behauptet): Frello sei eine eingetragene Marke; `frello.ch` gehöre dem Unternehmen oder sei gesichert; Frello sei markenrechtlich konfliktfrei; Frello sei gegründet oder lanciert. Die tatsächliche Registrierung/Reservierung ist **nicht** Teil dieses Dokumentationsauftrags.

---

## 9. Zielgruppen

### 9.1 Primäre Teilnehmende

**Alterspositionierung [BESCHLOSSEN] (D-07):** Frello richtet sich **primär an Menschen ab 65 Jahren**, bleibt aber **für alle Erwachsenen offen**. Eventbezogene Altersfokusse sind möglich und werden **transparent ausgewiesen** (ihre diskriminierungsrechtliche Zulässigkeit ist **[EXTERN ZU PRÜFEN]**).

- **Aktive Pensionierte (ab 65):** selbstständig, zunehmend digital erreichbar, an gemeinsamen Aktivitäten interessiert; wollen **nicht** als «einsam» etikettiert werden.
- **Menschen in Übergangssituationen:** Pensionierung, Verwitwung, Trennung, Umzug, Verlust bisheriger Kontakte, Auszug erwachsener Kinder, Aufgabe von Verein/Arbeitsplatz, gesundheitlich bedingte Alltagsveränderung. Der Bedarf ist **ereignis-**, nicht rein altersgetrieben **[HYPOTHESE]**.
- **Ältere Menschen mit Unterstützungsbedarf:** benötigen verständliche Bedienung, gut lesbare Darstellung, Telefon-/Rückrufhilfe (D-27), Buchung durch Angehörige (D-15), klare Mobilitäts- und Barrierefreiheitsangaben, Kommunikation per E-Mail/SMS, verständliche Zahlungs-/Stornoregeln.
- **Jüngere Erwachsene:** grundsätzlich zugänglich; eventbezogene Altersfokusse (z. B. 60+/70+/80+) werden transparent ausgewiesen (D-07/D-22).

### 9.2 Angehörige

Angehörige sind eine wichtige indirekte Nutzergruppe. **Angehörigenbuchung ist erlaubt [BESCHLOSSEN] (D-15):** die buchende Person benötigt ein Konto; buchende und teilnehmende Person werden getrennt geführt; Zustimmung und Teilnehmeridentität müssen nachvollziehbar sein. Die datenschutzrechtliche Ausgestaltung ist **[EXTERN ZU PRÜFEN]**.

### 9.3 Anbieter (Segmente)

Im MVP zugelassen sind **geprüfte kommerzielle Anbieter, öffentliche Institutionen, gemeinnützige Organisationen und Vereine**; **private Gastgeber sind im MVP nicht zugelassen** **[BESCHLOSSEN]** (D-08). Für jedes Segment gilt ein eigenes Nutzenversprechen (siehe Kapitel 11).

---

## 10. Nutzenversprechen für Teilnehmende

- **Passende Erlebnisse in der Nähe finden** – kuratierte, verständlich beschriebene Angebote statt fragmentierter Kanäle.
- **Sicher gemeinsam hingehen** – Kleingruppen, «Alleine willkommen», ereignisbezogener Gruppenchat, Buddy-/Anreise-Abstimmung, Gastgeber-Begrüssung.
- **Verbindlichkeit ohne Risiko** – Mindest-/Höchstteilnehmerzahl, Warteliste, klare Storno- und Rückerstattungsregeln.
- **Zugänglichkeit** – Angaben zu Tempo, Barrierefreiheit, ÖV, Verpflegung; Telefon-/Angehörigenunterstützung.
- **Vertrauen** – verifizierte Anbieter, menschliche Moderation, Schutz vor Betrug und Belästigung.

*Alle konkreten Feature-Zusagen stehen unter dem Vorbehalt der MVP-Abgrenzung (Kapitel 35) und der offenen Entscheidungen.*

---

## 11. Nutzenversprechen für Anbieter

| Anbietersegment | Kernnutzen (Hypothese) |
|---|---|
| **Kommerzielle Anbieter** (Restaurants, Kultur, Kurse, Reisen) | Neue, passende Gäste; höhere Auslastung durch gefüllte Gruppen; Warteliste/Nachrücken; Zahlungs- und Buchungsabwicklung; Nachfrageanalysen. |
| **Öffentliche Institutionen** (Gemeinden, Bibliotheken) | Bessere Auffindbarkeit sozialer Angebote; einfache Veröffentlichung; Reichweite in der Zielgruppe. |
| **Gemeinnützige Organisationen / Vereine / Kirchen** | Kostenlose oder vergünstigte Veröffentlichung; verlässliche Anmeldungen; Entlastung bei Organisation. |
| **Private Gastgeber** | **Im MVP nicht zugelassen (D-08).** Frühestens später und nur mit strengeren Vertrauens- und Sicherheitsregeln. |

Der Mehrwert gegenüber reinem Ticketing (z. B. Eventfrog) muss **spürbar** sein – insbesondere neue zahlende Gäste, Gruppenbildung, Support, Moderation und Vertrauensinfrastruktur (siehe Kapitel 23/24).

---

## 12. Produkt- und Leistungsangebot

Frello ist ein **kuratierter, vertrauenswürdiger Erlebnis-Marktplatz** mit sozialer Begleitung. Kernbausteine (Zuordnung MVP vs. später in Kapitel 35):

- Regionale Eventsuche und Filter;
- verifizierte Anbieter und kuratierte Events;
- verbindliche Anmeldung/Buchung mit Mindest-/Höchstzahl, Warteliste, Storno, Rückerstattung;
- einfacher, sicherer Steckbrief (kein öffentliches Social Network im MVP);
- ereignisbezogener Gruppenchat mit Melden/Blockieren;
- Bewertungssystem (Events/Anbieter, nicht Teilnehmende);
- Gastgeber-Dashboard mit Teilnehmerliste, Check-in, Kommunikation;
- Adminbereich für Prüfung, Support, Moderation, Rückerstattungen;
- Zugänglichkeits- und Mobilitätsinformationen pro Anlass;
- E-Mail/Push und optional SMS/Telefonhilfe.

---

## 13. Zentrale Nutzerabläufe

**Teilnehmende (Hypothese):** Entdecken → Filtern (Region, Zeit, Preis, Tempo, Barrierefreiheit) → Eventdetails prüfen → verbindlich anmelden/buchen → ggf. Warteliste → Erinnerung erhalten → Gruppenchat zur Anreise → Check-in vor Ort → kurze Bewertung → Wiederbuchung.

**Anbieter (Hypothese):** Registrierung/Verifikation → Event anlegen (mit Mindest-/Höchstzahl, Preis, Zugänglichkeit) → Buchungen/Warteliste verwalten → Durchführung bestätigen oder rechtzeitig absagen → Check-in → Auszahlung → Nachfrage-/Feedback-Auswertung.

**Angehörige (Hypothese, rechtlich zu klären):** Angebot finden/empfehlen → mit Zustimmung für eine Person buchen → Erinnerungen unterstützen.

---

## 14. Veranstaltungskategorien

- **Essen & Genuss:** Mittagstisch, Brunch, Themenabend, Degustation, gemeinsames Kochen, Restaurantveranstaltung, saisonale Menüs.
- **Spiel & Geselligkeit:** Bingo, Jassen, Quiz, Brettspiele, Tanztee, Stammtisch, Spielnachmittag.
- **Kultur & Unterhaltung:** Museum, Theater, Kino, Konzert, Lesung, Comedy, Ausstellung, Führung.
- **Ausflüge & Reisen:** Tagesfahrt, Schifffahrt, Bahn-/Busreise, Ferien, Weihnachtsmarkt, Besichtigung, Gruppenausflug.
- **Bewegung & Natur:** Spaziergang, leichte Wanderung, Velo, Gymnastik, Tanzen, Bewegungsgruppe.
- **Lernen & Kreativität:** Sprache, Digitales, Malen, Handwerk, Musik, Vortrag, Workshops.
- **Engagement & Generationen:** Freiwilligenarbeit, Mentoring, generationenübergreifende Projekte, Wissensaustausch.
- **Online & von zuhause:** ergänzend, **nicht** der Produktkern.

---

## 15. Profile und Community

Ein **sicherer Steckbrief** statt eines umfangreichen öffentlichen Social Networks im MVP **[HYPOTHESE]**.

**Mögliche Profilfelder:** Vorname/Anzeigename, Region, Altersband, Sprachen, Interessen, Aktivitätsniveau, freiwilliges Foto, kurzer Biotext, freiwillig «komme meist allein», Begleitpersonen-Hinweis, verifizierte Telefonnummer (internes Vertrauensmerkmal), Anzahl besuchter Anlässe, «Mitglied seit», Interessenwünsche.

**Nicht öffentlich:** vollständiges Geburtsdatum, vollständige Adresse, Telefonnummer, E-Mail, Zahlungsdaten, Notfallkontakt, Gesundheitsdiagnosen, interne Sicherheits-/Moderationsinformationen.

**Beschlossene Profil-/Konto-Regeln [BESCHLOSSEN]:**

- **Keine Gastbuchung; jede Buchung erfordert ein Frello-Konto** (D-20). Bei Angehörigenbuchung benötigt die teilnehmende Person nicht zwingend ein eigenes Konto (D-15).
- **Sichtbarkeit (D-21):** Nicht angemeldete Personen sehen nur die **Teilnehmerzahl**. Bestätigte Teilnehmende sehen **Vornamen und freiwillige Profilbilder** ihrer Eventgruppe; Profilbilder bleiben freiwillig.
- **Altersanzeige (D-22):** freiwillig nur eine **breite Generation** (60+/70+/80+); das genaue Geburtsdatum bleibt privat.
- **Verifikation (D-26):** **Telefonnummerverifikation vor der ersten Buchung verpflichtend**; die Nummer ist für andere Mitglieder nicht sichtbar.

**Ausdrücklich nicht im MVP:** öffentliche vollständige Geburtsdaten, genaue Wohnadresse, Familienstand als Pflichtfeld, öffentliche Gesundheitsdiagnosen, frei sichtbare Teilnehmerlisten für Nichtangemeldete, Follower-/Like-/Popularitätsmechaniken.

---

## 16. Buchung und Warteliste

Produkt-Hypothese für die Buchungs- und Mindestteilnehmerlogik **[HYPOTHESE]**:

1. Anbieter definiert Mindest- und Höchstteilnehmerzahl.
2. Teilnehmende melden sich verbindlich an bzw. buchen.
3. Bei Erreichen der Höchstzahl öffnet eine Warteliste.
4. Die Warteliste folgt grundsätzlich der Eintragungsreihenfolge.
5. Wird ein Platz frei, erhält die erste berechtigte Person ein zeitlich begrenztes Buchungsangebot.
6. Nach Ablauf geht der Platz automatisch an die nächste Person.
7. Wird die Mindestzahl bis zu einem festgelegten Zeitpunkt nicht erreicht, kann der Anbieter absagen **oder** trotzdem durchführen.
8. Bei Absage werden geleistete Zahlungen nach klaren Regeln rückerstattet.
9. Die Plattform versendet Erinnerungen.
10. Die tatsächliche Teilnahme wird per Check-in/Gastgeberbestätigung erfasst.

**Beschlossene Regeln [BESCHLOSSEN] (siehe [ADR-004](./decisions/ADR-004-buchung-zahlung-storno-warteliste.md)):**

- **Zahlung (D-17):** je Event **Online-Zahlung und Zahlung vor Ort** möglich. Provisionsabrechnung bei Vor-Ort-Zahlung und der regulierte Zahlungsfluss sind **[EXTERN ZU PRÜFEN]**.
- **Stornomodelle (D-18):** Anbieter wählen **eines von drei** Frello-Modellen; **keine freien eigenen Klauseln**:
  - **Flexibel:** kostenlose Stornierung bis **24 h** vor Beginn.
  - **Standard:** kostenlose Stornierung bis **7 Tage** vor Beginn; **50 % Rückerstattung bis 48 h** vor Beginn.
  - **Fix:** grundsätzlich **keine reguläre Rückerstattung**.
  Ausnahmen, Gebührenanteile, Ersatzpersonen und juristische Formulierungen sind **[EXTERN ZU PRÜFEN]**.
- **Durchführung/Nachrücken (D-19):** Durchführungsentscheid bei lokalen Einzelveranstaltungen grundsätzlich spätestens **48 h** vorher; reguläres Nachrückangebot **12 h**; bei **<24 h** bis Beginn **2 h** Nachrückfrist.
- **No-shows:** erstes Nichterscheinen ohne Absage → **Hinweis**; bei Wiederholung **zeitweise Buchungsbegrenzung mit Einsprachemöglichkeit**; **keine automatische Geldstrafe**.

**Ergänzende Regeln (Nachtrag 31.08.2026) [BESCHLOSSEN]:**

- **Keine Teilzahlungen im MVP (D-41):** Online-Buchungen werden im MVP vollständig bezahlt; Teil-/Ratenzahlungen sind ausgeschlossen (späteres Modell zurückgestellt). D-41 trifft keine Aussage zur rechtlichen/technischen Ausgestaltung des Zahlungsflusses (D-17).
- **Buchungsübertragung (D-40):** bis **24 h vor Beginn** selbstständig an eine andere Person übertragbar, die ein Konto besitzt und die **Telefonverifikation (D-26)** abgeschlossen hat; unter 24 h nur über den Support. Platzanzahl bleibt unverändert; Teilnahme-, Check-in- und Bewertungsrecht wandern zur teilnehmenden Person; die Übertragung wird protokolliert. Der Angehörigenmodus (D-15) bleibt eigener Buchungsweg. Details **[OFFEN]**; revDSG/Einwilligung **[EXTERN ZU PRÜFEN]**.
- **Anbieterabsage inkl. Wetter/kurzfristig (D-42):** bei Online-Zahlung **garantierte volle Rückerstattung als Standard und Wahlrecht**; ein Ersatztermin/Umbuchung darf zusätzlich angeboten werden, die teilnehmende Person wählt frei. Rechtsverbindliche Formulierung, Konsumentenschutz und Abgrenzung höherer Gewalt **[EXTERN ZU PRÜFEN]**.
- **Ausfall einer zentralen Leistung (D-43):** fachlich wie D-42 (volle Rückerstattung Standard, optionale Umbuchung mit Wahlrecht); zusätzlich **aktive Information** der Betroffenen über verfügbare Frello-Kanäle (technische Kanalwahl, z. B. «Push», folgt später), **Audit-Dokumentation**, wiederholte Ausfälle als internes Qualitätssignal. **[EXTERN ZU PRÜFEN]** wie D-42.
- **Wartelisten-Sonderfall <2 h (D-44):** wird **weniger als zwei Stunden** vor Beginn ein Platz frei, geht das Nachrückangebot **gleichzeitig an alle berechtigten Wartenden**; die **erste vollständig bestätigte digitale Zusage** (bis Eventbeginn) erhält den Platz; sagt niemand zu, bleibt der Platz frei; **keine spontane Vor-Ort-Vergabe** an unverifizierte/nicht digital eingebuchte Personen. **D-20 und D-26 gelten ohne Ausnahme.** Die reguläre Reihenfolge-/Fristenlogik von D-19 bleibt außerhalb dieses Sonderfalls unverändert; ein genereller Broadcast bleibt **[OFFEN]**.

**Weiterhin offen:** Kulanzdetails, Anzeige-/Check-in-Guardrails und Missbrauchs-/Häufigkeitsgrenzen der Buchungsübertragung (D-40), genereller Warteliste-Broadcast (D-44), späteres Teilzahlungsmodell (D-41) sowie die vertrags-/konsumentenschutzrechtliche Ausgestaltung der Storno-/Rückerstattungs- und Absageregeln **[OFFEN]/[EXTERN ZU PRÜFEN]** (D-18/D-42/D-43).

### Eventdarstellung (mögliche Felder)

Titel, Beschreibung, Veranstalter (+ Typ), Datum, Beginn/Ende, Treffpunkt, genaue Leistung, vollständiger Preis, enthaltene/nicht enthaltene Leistungen, Mindest-/Höchstzahl, Buchungsschluss, freie Plätze, Wartelistenstatus, Storno-/Absageregeln, Zugänglichkeit, Mobilitätsanforderungen, Sprache, Verpflegung, Kontakt am Veranstaltungstag, «Alleine willkommen», Begleitperson möglich, Altersfokus, Check-in-Methode.

**Pflichtfelder [BESCHLOSSEN] (D-31, siehe [ADR-008](./decisions/ADR-008-eventdarstellung-pflichtfelder-filter-freigabe.md)):** Der frühere Platzhalter «Pflichtfelder [OFFEN]» ist ersetzt. **Immer verpflichtend:** Titel, verständliche Kurzbeschreibung, Kategorie, Datum, Beginn, Ende, Veranstaltungsort, vollständige Adresse, Stadt/Region, Preis, Zahlungsart, Mindest-/Höchstteilnehmerzahl, Buchungsschluss, gewähltes Stornomodell, Zeitpunkt des Durchführungsentscheids, Sprache, verantwortlicher geprüfter Anbieter, Kontaktmöglichkeit, Zugänglichkeitsangaben, Kennzeichnung «Alleine willkommen». **Bedingt verpflichtend (wenn relevant):** körperliches Aktivitätsniveau, erforderliche Ausrüstung, Verpflegung, transparenter Altersfokus, Kennzeichnung externer Buchung, Qualifikationsnachweis bei Gesundheits-/Bewegungs- oder vergleichbar sensiblen Angeboten. **Freiwillig im MVP:** ÖV-Informationen, Parkmöglichkeiten, Veranstaltungsbild. Das Feld **Kennzeichnung externer Buchung** ist im MVP inaktiv, da externe Buchungen im MVP ausgeschlossen sind (D-39). Es werden **keine** technischen Datenbankfelder oder API-Schemas beschlossen.

**Freigabeworkflow [BESCHLOSSEN] (D-33):** Kein Event wird automatisch veröffentlicht; jedes Event beginnt als **Entwurf** und wird **vollständig manuell von Frello geprüft** (Ergebnis: freigegeben / abgelehnt / zur Überarbeitung zurückgegeben). Fehlende oder unklare Pflichtangaben verhindern die Veröffentlichung. Keine automatisierte oder KI-basierte Freigabe.

**MVP-Pflichtfilter für Teilnehmende [BESCHLOSSEN] (D-32):** Stadt/Region, Datum/Zeitraum, Kategorie, Preis, kostenlos, Zugänglichkeit, Aktivitätsniveau, «Alleine willkommen», verfügbare Plätze. **Zurückgestellt (spätere Filter, nicht MVP):** Sprache, ÖV-Erreichbarkeit, Verpflegung, Altersfokus.

---

## 17. Bewertungssystem

**Grundprinzip:** Bewertet werden **Veranstaltungen** (und daraus abgeleitet die Anbieterleistung). Teilnehmende erhalten **keine** öffentliche Sternebewertung **[BESCHLOSSEN]** (Leitplanke).

**Bewertungsberechtigung [BESCHLOSSEN] (D-24):** nur **verifiziert angemeldete und tatsächlich teilgenommene bzw. eingecheckte** Personen dürfen bewerten.

**Empfohlene Standardfragen (Hypothese):**
- Gesamtbewertung «Wie hat dir der Anlass gefallen?» (1–5 Sterne)
- Wohlgefühl «Hast du dich willkommen und wohlgefühlt?» (ja / teilweise / nein)
- Beschreibungstreue «Entsprach der Anlass der Beschreibung?» (ja / teilweise / nein)
- Wiederteilnahme «Würdest du wieder teilnehmen?» (ja / vielleicht / nein)
- Optionales Freitextfeedback (Gefallen / Verbesserung)

**Veranstaltungsspezifische Zusatzkriterien (maximal wenige):** Organisation, Freundlichkeit, Preis-Leistung, Gruppengrösse, Tempo, körperliche Anforderung, Barrierefreiheit, Verpflegung, Treffpunkt, Erreichbarkeit, Möglichkeit neue Personen kennenzulernen. Gesamtes Feedback möglichst in unter einer Minute abschliessbar.

**Öffentliche Anbieterbewertung [BESCHLOSSEN] (D-24/D-25):** erst **ab fünf bestätigten Bewertungen** und **immer mit sichtbarer Bewertungsanzahl**. **Freitextfeedback bleibt im MVP intern** und wird **nicht öffentlich** publiziert; öffentlich erscheinen **nur strukturierte, aggregierte** Ergebnisse. Anbieter können **interne, möglichst anonymisierte** Qualitätsrückmeldungen erhalten.

**Strukturierte Bewertungen [BESCHLOSSEN] (D-34, verfeinert D-24/D-25, siehe [ADR-006](./decisions/ADR-006-bewertungen-feedback-qualitaet.md)):** Fünf **öffentlich** bewertete Kategorien: (1) Gesamterlebnis, (2) Organisation, (3) Beschreibungstreue, (4) Freundlichkeit/Betreuung, (5) Preis-Leistungs-Verhältnis. **Zugänglichkeit** wird strukturiert erfasst, bleibt im MVP **intern** und fließt **nicht** in die öffentliche Gesamtnote ein. **Öffentliche Gesamtnote:** gleichgewichteter arithmetischer Durchschnitt der fünf öffentlichen Kategorien (jede Kategorie gleiches Gewicht), Rundung auf **eine Dezimalstelle**, Anzeige weiter erst ab fünf Bewertungen mit sichtbarer Anzahl. **Anbieterrechte:** Einsicht in anonymisiertes internes Freitextfeedback, nicht öffentliche Stellungnahme/Einsprache, **keine öffentliche Anbieterantwort im MVP**. **Weiterhin offen:** genauer Einspracheprozess, Moderationsregeln, interne Alters-/Zeitraum-/Trenddarstellung **[OFFEN]**. **[EXTERN ZU PRÜFEN]:** revDSG/Persönlichkeitsrecht bei anonymisierter Feedback-Einsicht und Einsprache.

**Qualitätssteuerung:** Kein Anbieter wird wegen einer einzelnen schlechten Bewertung automatisch entfernt. Interne Qualitätssignale (Durchschnitt, Trend, wiederkehrende Beschwerden, Beschreibungstreue, Wiederbuchung, No-show-/Absagerate, Rückerstattungsprobleme, Sicherheitsmeldungen) werden getrennt betrachtet. **Sicherheitsmeldungen** werden unabhängig von Sternebewertungen geprüft; keine automatische Entfernung aufgrund einer einzelnen Kennzahl.

---

## 18. Analytics und Wirkungsmessung

Analytics sollen Bedürfnisse verstehen, das Angebot ausbauen, unpassende Angebote verbessern/entfernen, regionale Nachfrage erkennen, Zeiten und Zugänglichkeit optimieren, Anbieterqualität kontrollieren und reale Teilhabe fördern – **datensparsam und respektvoll** (siehe Kapitel 30).

**Automatisch erfassbare Signale (Auswahl):** Eventansichten, Suche, verwendete Filter, Merkliste, Buchungsbeginn/-abschluss/-abbruch, Wartelisteneintrag, Nachrückangebot und -annahme, Absage, No-show, Check-in, Bewertung, Wiederbuchung (gesamt / gleicher Anbieter / gleiche Kategorie), Nachfrage pro Region/Tageszeit/Preisbereich, Auslastung, Erreichen der Mindestzahl, Supportanfrage, Sicherheitsmeldung.

**Freiwillige Abbruchfrage** «Warum hast du nicht gebucht?»: zu teuer / zu weit / ungünstige Zeit / Gruppe zu gross / körperlich zu anspruchsvoll / Infos unklar / niemanden zum Mitkommen / ausgebucht / anderer Grund.

**Interessenswünsche:** freiwillige Angabe gewünschter Kategorien; aggregierte Nachfrage kann später der Anbietergewinnung dienen (nur als Konzept, **keine** erfundenen Nachfragezahlen).

**Wirkungsmessung (sensibel, freiwillig, datensparsam):** allein gekommen? trotzdem willkommen gefühlt? weitere Teilnahme gewünscht? jemanden kennengelernt, den man wiedersehen möchte?

**North-Star-Metric (Prüfvorschlag) [HYPOTHESE]:** «Anteil der Teilnehmenden, die innerhalb von 60 Tagen erneut ein reales Erlebnis buchen **und tatsächlich besuchen**.» Zu unterscheiden sind Registrierung, Eventansicht, Buchung, Check-in, Bewertung, Wiederbuchung, wiederholte tatsächliche Teilnahme. **Downloads und Registrierungen allein sind keine ausreichenden Erfolgskennzahlen.**

---

## 19. Markt Schweiz

Startmarkt ist die **Deutschschweiz**, Produktsprache im Pilot **Deutsch** **[BESCHLOSSEN]** (D-09/10). Der Pilot läuft **parallel in Zürich, Basel, Bern und Luzern**; jede Stadt muss **≥5 geprüfte Anbieter und ≥10 kommende Termine** aufweisen **[BESCHLOSSEN]** (D-29). **Gemeinsamer Start [BESCHLOSSEN] (D-37, ändert die frühere stadtweise Startlogik von D-29):** der offizielle Pilot beginnt **gleichzeitig in allen vier Städten**, erst wenn **alle vier** die Dichteschwelle erfüllen; es gibt keine separate offizielle Messung je Stadt. Die **Pilotdauer beträgt 16 Wochen** **[BESCHLOSSEN – zu validieren] (D-36)** (Hypothese A-03); eine Soft-Launch-Vorschau für früher bereite Städte bleibt **[OFFEN]** (D-37). Ein mehrsprachiger Start ist im Pilot nicht vorgesehen; konkrete Termine sind **[OFFEN]**.

**Markteintritts-Logik:** Aufbau ausreichender lokaler Angebotsdichte je Stadt (Dichteschwelle als Gate gegen das Henne-Ei-Problem) → tragfähiger Betrieb → schrittweise Ausweitung nach belegten Kennzahlen.

Demografischer Kontext (belegt) **[MARKTERKENNTNIS]**:

- Rund **1,8 Mio.** Personen ab 65 in der Schweiz; langfristig deutlich steigend (Bevölkerungsszenarien BFS).
- Rund **80'000–150'000** zu Hause lebende Personen ab 65 fühlen sich häufig einsam («connect!») – enger definiert als allgemeine Einsamkeitsangaben.
- **Neun von zehn** Personen über 65 sind online («Digital Seniors 2025»); digitale Kompetenzen bleiben heterogen.
- Der subjektiv empfundene Beginn des Altseins hat sich nach hinten verschoben (BFS).

> Hinweis: Exakte Werte, Bezugsjahre und Definitionen sind im [Quellenregister](./04_SOURCE_REGISTER.md) dokumentiert. Unterschiedliche Einsamkeitsdefinitionen und Altersgruppen werden nicht vermischt.

---

## 20. Marktgrössenmodell

**Kein** erfundener TAM/SAM/SOM-Wert. Stattdessen ein transparentes **Berechnungsmodell**; konkrete Zahlen sind **[OFFEN]**, bis belastbare, regional passende Daten vorliegen.

| Ebene | Definition (Modell) | Formel (Skizze) | Status |
|---|---|---|---|
| **TAM** | Erwachsene CH-Bevölkerung mit Interesse an gemeinsamen Freizeitaktivitäten (oder ab festzulegender Altersgrenze) | `Bevölkerung(Segment) × Anteil mit Aktivitätsinteresse` | Zahl **[OFFEN]**; Bevölkerungsbasis belegbar (BFS) |
| **SAM** | Digital oder über unterstützte Kanäle erreichbare Zielgruppe in relevanter Sprach-/Pilotregion mit Interesse an den Kategorien | `TAM × erreichbarer Anteil × Regionsanteil × Kategorieinteresse` | Zahl **[OFFEN]** |
| **SOM** | Real erreichbare Personen in den ersten Pilotregionen, begrenzt durch Angebotsdichte, Marketingreichweite, operative Kapazität, Anbieteranzahl | `SAM × realistische Penetration(Pilot)` | Zahl **[OFFEN]** |

Jede spätere Berechnung muss Formel, Quelle, Jahr, geografische Abdeckung, Annahme und Unsicherheit offen ausweisen. Fehlen belastbare Daten, wird die Formel geliefert und die Zahl als **[OFFEN]** gekennzeichnet.

---

## 21. Konkurrenzanalyse

### 21.1 Wettbewerbslandschaft (Selbstauskünfte gekennzeichnet)

| Anbieter | Kategorie | Positionierung/Funktionen | Reichweite (Selbstauskunft) | Offener Raum für Frello |
|---|---|---|---|---|
| **Freizeit60Plus / GemeinsamErleben** | Freizeit-Community 60+ | Profile, Aktivitäten, Gruppen, Events, Gruppenchat, private Kontakte; Grundfunktionen kostenlos; CH/DE/AT | GemeinsamErleben nennt **>1,5 Mio.** Mitglieder (Selbstauskunft) | Keine kuratierte CH-Buchungsplattform mit integrierter Anbietertransaktion, Senior-Support, verbindlichem Kleingruppenstandard |
| **Sozialkontakt.ch** | Kontaktbörse | Ortsbezogene, kostenlose Kontaktsuche nach Interessen | **2,5 Mio.** Besuche/Jahr (Selbstauskunft) | Eher Kontaktbörse als kuratierter Erlebnis-Marktplatz mit Buchung/Mindestzahl/Warteliste |
| **Pro Senectute** | Institutioneller Freizeitveranstalter | Regionale Kurse, Sport, Kultur, Treffen, Reisen; teils Online-/Telefon-/E-Mail-Anmeldung | – | Institutionell/kantonal fragmentiert; keine offene anbieterübergreifende Marktplatzlogik – **potenzieller Partner** |
| **Infosenior** | Lokales Verzeichnis | Suchportal für Dienstleistungen im Alter inkl. Freizeit | – | Verzeichnischarakter; wenig Gruppenbildung/Transaktion |
| **Spontacts / Meetup** | Allgemeine Freizeit-Community | Lokale Aktivitäten, Gruppen, neue Kontakte | – | Nicht auf Vertrauens-/Zugänglichkeits-/Supportbedürfnisse Älterer zugeschnitten |
| **Eventfrog / Eventbrite** | Eventkalender / Ticketplattform | Eventagenda, Ticketverkauf, Veranstalterwerkzeuge | Eventfrog nennt **>90'000** Veranstalter, **5,1 Mio.** erreichbare Menschen (Selbstauskunft) | Keine gezielte soziale Begleitung (passende Kleingruppen, Mobilitätsinfos, sozialer Check-in) |
| **Gemeinden, Vereine, Kirchen, Seniorentreffs** | Offline-Alternative | Mittagstische, Spielnachmittage, Bewegung, Kultur, Ausflüge | – | Fragmentierte Auffindbarkeit/Anmeldung – wichtige **Angebots-/Vertriebspartner** |
| **Facebook-/WhatsApp-Gruppen, Vereins-/Freundesnetzwerke** | Kommunikationsalternative | Informelle Organisation | – | Kein verbindliches Buchungs-/Vertrauenssystem |

**Deutschland (spätere Expansion) [MARKTERKENNTNIS]:** Feierabend.de (Chat/Foren/Regionalgruppen), Seniorentreff.de (Profile/Gruppen/Chat/redaktionelle Inhalte, kostenlose Privatfunktionen), nebenan.de (Nachbarschaft; **2 Mio.** Nutzende laut Selbstauskunft 2021), Seniorennetz Berlin (geprüfte Angebote). Details siehe Kapitel 35 (Bedingungen für Deutschland).

### 21.2 Wettbewerbskategorien

Senioren-Community · allgemeine Freizeit-Community · Kontaktbörse · Eventkalender · Ticketplattform · institutioneller Freizeitveranstalter · lokales Verzeichnis · Offline-Alternative · Kommunikationsalternative.

### 21.3 Bewertung der Konkurrenzintensität

Als «Profile + Chat + Events für 60+» ist die funktionale Konkurrenz **mittel bis hoch** (Freizeit60Plus/GemeinsamErleben deckt dies nah ab). Der eigentliche Wettbewerber ist die **Kombination** aus WhatsApp-Gruppe, Gemeindekalender, Pro-Senectute-Programm, Restauranttelefon und Eventfrog. Frello muss diesen Prozess **spürbar einfacher** machen.

---

## 22. Positionierung und Differenzierung

Differenzierungsraum als **strategische Hypothese** (keine Einzigartigkeitsbehauptung ohne umfassenden Beleg) **[HYPOTHESE]** – die Kombination aus:

seniorengerechter Nutzung · kuratierten Angeboten · verifizierten Anbietern · verbindlicher Buchung · Mindest-/Höchstteilnehmerzahl · Warteliste mit automatischem Nachrücken · Event-Gruppenchat · konkreter Gruppenbildung vor dem Anlass · Zugänglichkeits- und Tempoangaben · «Alleine willkommen» · Angehörigenunterstützung · Telefonhilfe · menschlicher Moderation · lokalen wiederkehrenden Kleingruppen · **realer Teilnahme statt Bildschirmzeit**.

**Respektvolle Positionierung [BESCHLOSSEN]:** Frello stellt ältere Menschen **nicht** pauschal als einsam, hilfsbedürftig, technisch unfähig, passiv, krank oder sozial ausgeschlossen dar. Kommunikation betont positive Motive: Lebensfreude, neue Erlebnisse, gemeinsame Interessen, Aktivität, Zugehörigkeit, Neugier, unkompliziertes Mitmachen, Sicherheit, Vertrauen. Markenkern (Hypothese): «Gemeinsam etwas erleben – einfach, sicher und in der Nähe.» «Primär für die Generation 65+, offen für alle» ist strategisch besser als eine harte Altersgrenze **[HYPOTHESE]**.

---

## 23. Geschäftsmodell

**Grundsatz [HYPOTHESE / Gründerpräferenz]:** Teilnehmende suchen, legen Profile an, merken Veranstaltungen vor und nutzen Gruppenfunktionen **kostenlos**; kein obligatorisches Abo. Bezahlt werden einzelne kostenpflichtige Veranstaltungen. Erlöse primär über vermittelte, bezahlte Buchungen und optionale B2B-Leistungen. Ein 65+-Abo-Pricing ist derzeit **nicht** beschlossen.

**Gestuftes Anbietermodell (zu prüfen):**

| Modell | Geeignet für | Empfehlung/Hypothese | Status |
|---|---|---|---|
| **Kostenloses Inserat / Anfrage** | kostenlose Gemeinde-, Vereins-, Kirchen-, gemeinnützige und ausgewählte Community-Angebote | Keine Provision bei kostenlosen Events; **im MVP keine kostenpflichtige Promotion / keine bezahlte Hervorhebung** (D-38); ein Promotionsmodell frühestens nach Pilot | **[BESCHLOSSEN]** (D-12; MVP-Promotion via D-38 ausgeschlossen) |
| **Buchung extern** | ausgewählte, geprüfte Partner mit eigenem Ticket-/Buchungssystem | **Im MVP ausgeschlossen (D-39):** keine Weiterleitung an externe Buchungssysteme, kein Lead-/B2B-Modell im MVP; Einführung frühestens nach Pilot | **[TEILWEISE BESCHLOSSEN]** (D-13; **aus MVP-Scope genommen durch D-39**) |
| **Standard-Marktplatzbuchung** | Restaurantabend, Kurs, lokaler Ausflug | **8 %** inkl. Zahlungs-/Plattformleistung – Pilotgrundlage, Satz im Pilot zu validieren | **[BESCHLOSSEN – zu validieren]** (D-11) |
| **Managed Event** | Frello konzipiert/vermarktet/betreut das Format | **15 %** (aktiv konzipierte/betreute Formate); betreute Formate ändern die Vermittlerrolle nicht automatisch | **[BESCHLOSSEN – zu validieren]** (D-11) |
| **B2B Plus** | Ketten, Reiseanbieter, wiederkehrende Gastgeber | Monatstarif für Analytics, CRM-Export, mehrere Standorte, Promotions – **optional**, nicht einzige Monetarisierung | **[HYPOTHESE]** (nicht im MVP) |

**Preisbenchmark [MARKTERKENNTNIS, vor Verwendung gegen offizielle Quelle prüfen]:** Eventfrog nennt kostenlose Einträge sowie (Selbstauskunft) Plus **CHF 0.49 + 2,4 %** und Pro **CHF 0.49 + 3,6 %** pro verkauftem Ticket, jeweils exkl. MWST. **Schlussfolgerung:** Die beschlossene Frello-Standardprovision von **8 %** (bzw. 15 % bei betreuten Formaten) ist nur begründbar, wenn Frello **deutlich mehr als Ticketing** liefert (neue passende Gäste, zielgruppenspezifische Reichweite, Gruppenbildung, Warteliste, höhere Auslastung, Support, Moderation, Vertrauens-/Zugänglichkeitsinfrastruktur, wiederkehrende Buchungen, Nachfrageanalysen). Der Satz bleibt im Pilot zu validieren.

---

## 24. Pricinghypothesen

- Standard-Marktplatzprovision: **8 %** als Pilotgrundlage **[BESCHLOSSEN – im Pilot zu validieren]** (D-11).
- Betreute/aktiv konzipierte Formate: **15 %** **[BESCHLOSSEN – im Pilot zu validieren]** (D-11).
- Externe Buchungen: **im MVP ausgeschlossen** (D-39); Lead-/B2B-Preismodell **[OFFEN]**, frühestens nach Pilot (D-13/D-39).
- Kostenlose Inserate für geprüfte gemeinnützige/öffentliche Angebote **[BESCHLOSSEN]** (D-12); **kostenpflichtige Promotion im MVP ausgeschlossen** (D-38), spätere Entscheidung offen.
- Kein obligatorisches Teilnehmenden-Abo **[HYPOTHESE / Gründerpräferenz]**.
- Die **Validierung** der Sätze erfolgt im Pilot per Anbieterinterviews (Referenzpunkte 6 % / 8 % / 10 %), siehe Kapitel 28.

*Ticketpreise selbst legen die Anbieter fest; Frello schreibt keine Ticketpreise vor.*

---

## 25. Unit Economics

Nur **Formeln** – keine erfundenen Ergebnisse als Prognosen. Eingabewerte sind **[HYPOTHESE]/[OFFEN]** und stehen im [Annahmenregister](./03_ASSUMPTION_REGISTER.md).

| Kennzahl | Formel (Skizze) |
|---|---|
| Bruttoumsatz pro Event | `Plätze × Auslastung × Ticketpreis` |
| Plattform-Bruttoerlös pro Event | `Bruttoumsatz × Provisionssatz` (+ ggf. Fixgebühr) |
| Variable Kosten pro Buchung | `Zahlungsgebühr + anteilige Support-/Moderationskosten + Rückerstattungsrisiko` |
| Nettoerlös pro Event | `Plattform-Bruttoerlös − Σ variable Kosten − Rückerstattungen/Absagen` |
| Deckungsbeitrag pro Event | `Nettoerlös pro Event − direkt zurechenbare variable Kosten` |
| Deckungsbeitrag pro Anbieter | `Σ Deckungsbeitrag über durchgeführte Events des Anbieters` |
| Kundengewinnungskosten (CAC) | `Marketingkosten(Teilnehmende) / neu aktive Teilnehmende` |
| Anbietergewinnungskosten | `Akquisekosten(Anbieter) / neu aktive Anbieter` |
| Wiederbuchungswert | `Ø Deckungsbeitrag pro Teilnahme × erwartete Wiederteilnahmen` |
| Break-even-Events pro Monat | `Fixkosten pro Monat / Deckungsbeitrag pro Event` |

---

## 26. Finanzszenarien

**Szenariomodell, keine scheinpräzise Prognose.** Mindestens drei Szenarien: **konservativ / Basis / ambitioniert**. Alle Eingabevariablen sind Szenarioannahmen im [Annahmenregister](./03_ASSUMPTION_REGISTER.md).

**Eingabevariablen (Auswahl):** aktive Anbieter; Events/Anbieter/Monat; Anteil kostenpflichtiger vs. kostenloser Events; Ø Plätze; Ø Auslastung; Ø Ticketpreis; Provisionssatz; Managed-Event-Anteil; Fixgebühren; Zahlungsgebühren; Rückerstattungen; Anbieterabsagen; Support-, Moderations-, Marketing-, Personal-, Infrastruktur-, Rechts-, Versicherungs- und Buchhaltungskosten; Steuern/MWST (nur bei fachlicher Bestätigung, **[EXTERN ZU PRÜFEN]**); Rückstellungen; sonstige Betriebskosten.

**Erlösarten:** Transaktionsprovision · Managed-Event-Ertrag · B2B-Paket · Marketing-/Promotionsertrag · Lead-Gebühr · mögliche Partnerschaften · weitere (nur als **[OFFEN]** gekennzeichnet).

### 26.1 Erklärendes Beispiel (keine Prognose)

> **Dieses Beispiel ist keine Umsatzprognose, sondern illustriert die Mechanik des Provisionsmodells.**

- Ticketpreis: CHF 70 · Teilnehmende: 16 · Provision: 8 % (beschlossene Standard-Pilotgrundlage, D-11)
- Plattformumsatz: **CHF 89.60** pro ausverkauftem Event
- 100 vergleichbare Events/Monat: **CHF 8'960** Bruttoumsatz **vor** Zahlungsgebühren, Rückerstattungen, Support, Akquise, Moderation, MWST und Personal.

**Interpretation:** Provision allein trägt erst bei erheblicher lokaler Veranstaltungsdichte. Managed Events, Partnerschaften und optionale B2B-Werkzeuge können die Ökonomie verbessern.

### 26.2 Sensitivitätsanalyse (qualitativ/formelbasiert)

Der Nettoerlös reagiert überproportional auf **Auslastung** und **Provisionssatz** (beide gehen multiplikativ in den Bruttoerlös ein) sowie auf **Eventanzahl** (skaliert Fixkostendeckung). **Ticketpreis** wirkt linear auf den Bruttoerlös, ist aber durch Zahlungsbereitschaft begrenzt. **Wiederbuchungsrate** hebelt CAC-Amortisation. **Supportaufwand, Zahlungsgebühren und Absagen** drücken den Deckungsbeitrag pro Event; steigende Absage-/No-show-Raten können den Deckungsbeitrag rasch gegen null führen. **Keine Unternehmensbewertung.**

---

## 27. Marketing und Vertrieb (Go-to-Market)

**Teilnehmendengewinnung (Kanäle, Hypothese):** lokale Gemeinden; Pro Senectute u. ä.; Apotheken; Arztpraxen (nur unter fachlichen/rechtlichen Grenzen, **[EXTERN ZU PRÜFEN]**); Bibliotheken; Kirchen; Vereine; Quartierzentren; Seniorenorganisationen; Restaurants/Hotels; lokale Medien; Print-Flyer; Newsletter; Angehörige; Empfehlungsprogramme; lokale SEO; regionale Partnerschaften; Veranstaltungen vor Ort; Telefon-/Offline-Support.

**Anbietergewinnung (Hypothese):** direkte lokale Ansprache; Restaurantverbände; Tourismusorganisationen; Kulturinstitutionen; Gemeinden; bestehende Veranstalter; Pilotpartnerschaften; Nachfragebelege aus Interessenslisten; wiederholbare Formatvorlagen; geringe Einstiegshürde; erfolgsabhängige Vergütung.

**Markteintrittsproblem (Henne-Ei):** ohne lokale Angebote keine Teilnehmenden – ohne Teilnehmende wenig Anreiz für Anbieter. **Gegenmassnahmen:** Angebotsseite zuerst aufbauen; kuratierte Ankerformate; wiederkehrende Events; kostenlose Einstiegsangebote; regionale Konzentration; Concierge-Modell; manuelle Anbieterunterstützung.

---

## 28. Pilot- und Validierungsstrategie

**Grundsatz:** Vor umfassender technischer Umsetzung ein regionaler **Concierge-Pilot** – Prozesse teils manuell (Landingpage, Telefon, manuelle Buchung, WhatsApp/SMS im Hintergrund). Erst bei realen Anmeldungen und Wiederholungswünschen automatisieren.

**Pilotumfang:** paralleler Pilot in **Zürich, Basel, Bern, Luzern** **[BESCHLOSSEN]** (D-29); jede Stadt muss **≥5 geprüfte Anbieter und ≥10 kommende Termine** aufweisen **[BESCHLOSSEN]**. **Gemeinsamer Start (D-37):** der offizielle Pilot beginnt **gleichzeitig in allen vier Städten**, erst wenn alle vier die Schwelle erfüllen; keine separate offizielle Messung je Stadt. Die **Pilotdauer beträgt 16 Wochen** **[BESCHLOSSEN – zu validieren] (D-36)** (A-03). Mehrere wiederkehrende Formate, Mischung kostenlos/kostenpflichtig; Formate: Mittagstisch, Bingo, Jass, Quiz, Kulturangebot, gemütlicher Ausflug, Bewegungsangebot, kostenloses Partnerangebot. Eine Soft-Launch-Vorschau für früher bereite Städte bleibt **[OFFEN]** (D-37).

**Interviews [HYPOTHESE]:** 20–30 Gespräche mit potenziellen Teilnehmenden und 10–15 Anbieterinterviews – über unterschiedliche Alters-, Digital-, Mobilitäts-, Einkommens-, Lebens- und Regionsgruppen sowie Anbieterarten. Anbieterinterviews prüfen ausdrücklich die Zahlungsbereitschaft für **6 % / 8 % / 10 %**.

**Validierungsfragen:** Teilnehmende – wird real gebucht/teilgenommen? Wiederteilnahme in 60 Tagen? benötigte Unterstützung, fehlende Infos, akzeptierte Preise, wiederholungsstarke Kategorien. Anbieter – zusätzliche Gäste? akzeptable Provision? arbeitssparende Funktionen? Bedeutung von Mindestzahl/Warteliste? benötigte Stornoregeln? nützliche Daten? Supportbedarf?

**Pilotkennzahlen:** Eventansichten, Buchungsrate, Check-in-Rate, No-show-Rate, Wiederbuchung, Erreichen der Mindestzahl, Auslastung, Wartelistennachrücken, Supportfälle/Buchung, Anbieterzufriedenheit, Teilnehmerwohlgefühl, Deckungsbeitrag/Event, Sicherheitsmeldungen und Reaktionszeit.

---

## 29. Vertrauen und Sicherheit

**Vertrauen ist Bestandteil des Kernprodukts, kein Zusatzfeature.**

**Anbieterprüfung (Massnahmen, teils [EXTERN ZU PRÜFEN]):** Handelsregister-/Identitätsprüfung, Bankkontoabgleich, Telefonnummerverifikation, Geschäftsadresse, verantwortliche Kontaktperson, Prüfung der Veranstaltungsbeschreibung, Kennzeichnung des Anbietertyps, Qualifikationsnachweis bei Gesundheits-/Bewegungsangeboten.

**Teilnehmendenschutz:** **verpflichtende Telefonnummerverifikation vor der ersten Buchung** (D-26, nicht öffentlich), **nur moderierter Event-Gruppenchat für bestätigte Teilnehmende – keine freien 1:1-Nachrichten** (D-23), Melden/Blockieren, menschliche Moderation, Betrugswarnungen, Verbot privater Geldforderungen, Schutz vor Romance Scam/Anlagebetrug/Belästigung/Diskriminierung, Eskalationsprozess, nachvollziehbare Sanktionen. Support im Pilot: **Rückrufservice, keine ständig besetzte Hotline** (D-27); **Pilot-Supportzeiten Mo–Fr 09:00–17:00, Rückruf < 1 Werktag, außerhalb asynchron, dringende Sicherheitsmeldungen priorisiert** (D-35; dauerhafte Zeiten über den Pilot hinaus offen). (Das SECO warnt bei Kontakt-/Datingplattformen ausdrücklich vor versteckten Kosten und betrügerischen Geldforderungen **[MARKTERKENNTNIS]**.)

**Eventschutz:** klare Veranstalterrolle, Kontakt am Veranstaltungstag, Check-in, Gastgeberverantwortung, Begrüssung allein Ankommender, Notfallprozess, optionaler Notfallkontakt, Storno-/Absageregeln, Haftungsabgrenzung, Versicherungsprüfung (**[EXTERN ZU PRÜFEN]**).

**Keine öffentliche Teilnehmerbewertung.** Interne Sicherheitsmeldungen dürfen nicht als Beliebtheitssystem missbraucht werden.

---

## 30. Datenschutz, Recht und Compliance

**Dieser Businessplan ist keine Rechtsberatung.** Alle folgenden Punkte sind **[EXTERN ZU PRÜFEN]** durch qualifizierte Fachpersonen vor Umsetzung.

**Datenschutz:** Das revidierte Schweizer Datenschutzgesetz ist seit **1. September 2023** in Kraft **[MARKTERKENNTNIS]**. Erforderlich sind **Privacy by Design/Default**: minimale öffentliche Daten, verständliche Einwilligungen, Lösch-/Auskunfts-/Exportprozesse, definierte Aufbewahrung, Rollenrechte. Besonders schützenswerte Angaben (Gesundheit, Mobilität) dürfen nicht beiläufig in öffentlichen Profilen landen. Betroffen: Profil-, Standort-, Foto-, Chat-, Bewertungs-, Mobilitäts-, Gesundheits-, Altersdaten, Angehörigenzugriff, Notfallkontakte, Moderationsprotokolle, Hostingstandort, internationale Transfers, Analytics, Marketingeinwilligungen.

**Vertragsrecht/Konsumentenschutz:** Vermittler- vs. Veranstalterrolle, Vertragspartner, Preisbekanntgabe, AGB, Stornierung, Rückerstattung, Anbieterabsage, No-show, Gewährleistung, Haftung, Gerichtsstand, Beschwerdeprozess.

**Zahlungsabwicklung:** Frello soll **Kundengelder nicht ohne vorgängige regulatorische Prüfung selbst halten**. Abwicklung über etablierten Marketplace-Payment-Provider; zu klären: Auszahlungen, Rückerstattungen, Chargebacks, Identitätsprüfung, Geldwäscherei-/FINMA-Relevanz, Zahlungsgebühren, Anbieterabrechnung. FINMA weist allgemein darauf hin, dass Unternehmen, die Kundengelder verwalten, je nach Tätigkeit eine Bewilligung benötigen können **[MARKTERKENNTNIS]**.

**Steuern:** MWST, Provisionsabrechnung, Rechnungsstellung, Anbieterabrechnung, kostenlose Leistungen, grenzüberschreitende Leistungen, Deutschland-Expansion.

**Veranstaltungen/Reisen:** Veranstalterhaftung, Unfallrisiken, Versicherung, Bewilligungen, Lebensmittelallergien, Gesundheitsangebote, Reiseveranstalterpflichten, Pauschalreiserecht, Transportleistungen.

---

## 31. Betrieb und Organisation

Erforderliche Betriebsbereiche (ohne konkrete Stellen als beschlossen darzustellen): Anbieterakquise, Anbieter-Onboarding, Eventprüfung, Kundensupport, Telefonsupport, Moderation, Trust & Safety, Zahlungsabwicklung, Rückerstattungen, Beschwerdemanagement, Marketing, Partnerschaften, Produktmanagement, Technik, Datenschutz, Buchhaltung, Rechtsberatung.

| Aufgabe | Bereits im Pilot | Manuell möglich | Später automatisierbar | Sollte menschlich bleiben |
|---|---|---|---|---|
| Anbieterakquise/-onboarding | ja | ja | teilweise | Beziehungspflege |
| Eventprüfung/Kuratierung | ja | ja | teilweise | Grenzfälle |
| Buchung/Warteliste/Rückerstattung | ja | ja | ja | Kulanzentscheide |
| Kunden-/Telefonsupport | ja | ja | teilweise | persönliche Fälle |
| Moderation / Trust & Safety | ja | ja | teilweise (Vorfilter) | **Eskalation/Sicherheit** |
| Analytics/Nachfrageauswertung | teilweise | ja | ja | Interpretation |

**Geplante Betreiberin ist die bestehende Kreativ Solutions GmbH; Frello wird als deren Produkt geplant** **[BESCHLOSSEN MIT VORBEHALT]** (D-14). Eine **separate Frello-Gesellschaft ist nicht beschlossen und für den MVP nicht anwendbar** (D-04); sie wird nur reaktiviert, falls später eine eigene juristische Person mit «Frello» im Firmennamen geplant wird. Die rechtlichen und steuerlichen Auswirkungen (Vertragspartner, Haftung, Zahlungsfluss, MWST) sind **[EXTERN ZU PRÜFEN]**. Eigentümerstruktur und Teamgrösse sind **[OFFEN]**. Support im Pilot erfolgt als Rückrufservice (D-27) mit den Pilotzeiten **Mo–Fr 09:00–17:00, Rückruf < 1 Werktag** (D-35). Die vollständige manuelle Freigabe jedes Events (D-33) erhöht die operative Prüf-/Kuratierungslast, besonders im Vier-Städte-Parallelbetrieb (A-26).

---

## 32. Technisches Grobkonzept

Nur eine technische **Richtung**, keine endgültige Technologieauswahl.

**Beschlossene Reihenfolge [BESCHLOSSEN] (D-28, geändert durch D-46 am 31.08.2026):** (1) responsive Website → (2) **installierbare Web-App/PWA als verbindliches MVP-Ziel** → (3) regionaler Pilot (Web/PWA-Launch; der öffentliche Pilotstart hängt **nicht** von einer nativen App ab) → (4) **native iOS-/Android-App als Fast-Follow, früh bzw. parallel vorbereitet** (D-46). **Frühere Regel (D-28, 28.08.2026):** native Apps erst nach belegter Wiederbuchung/mobiler Nutzung und nach später festgelegten Schwellen – diese ausschließliche Schwellenbindung ist durch D-46 aufgehoben. **Auslösung nativer Entwicklung [BESCHLOSSEN] (D-45):** keine festen Kennzahlenschwellen; Start/Ausbau erfolgt per **Gesamtbewertung des Gründers** mit **separater ausdrücklicher Freigabe**; Pilotdaten sind Grundlage, lösen aber keine automatische Entwicklung aus. «Fast-Follow» ist eine früh vorgemerkte Produktphase, **keine** sofortige Implementierungsfreigabe. **Begründung:** bessere Auffindbarkeit, einfachere Nutzung für ältere Personen und Angehörige, schnellere Validierung, einfacherer Support; die Annahme, eine native App sei für die Zielgruppe wesentlich einfacher als eine installierbare PWA, bleibt eine **im Pilot zu prüfende Hypothese** (A-28).

**Offene technische Entscheidungen (nicht in diesem Auftrag zu treffen) [OFFEN]:** Webframework, native vs. Cross-Platform-App, Backend, Datenbank, Hosting, Datenregion, Authentifizierung, Payment-Provider, Chat, Analytics, E-Mail, SMS, Push, Moderationssystem, Anbieter-Dashboard, Adminbereich.

---

## 33. Risiken

Zusammenfassung; das vollständige Risikoregister mit ID, Ursache, Wahrscheinlichkeit/Schaden (qualitativ), Frühwarnsignal, Gegenmassnahme, Zuständigkeit, Status und Validierungsbedarf steht unten in Kapitel 33.1.

**Höchste Geschäftsrisiken:** Henne-Ei-Problem / unzureichende Angebotsdichte; stigmatisierende Positionierung; dünne Provision bei kleinen Events; zu grosser MVP; geringe Wiederbuchung.
**Höchste rechtliche Risiken:** Zahlungsregulierung (Kundengelder/FINMA), Datenschutz (revDSG), Haftung/Vertragsrolle, Reiseveranstalter-/Pauschalreisepflichten.

### 33.1 Risikoregister (qualitativ, keine erfundenen Zahlen)

| ID | Risiko | Ursache | Eintritt | Schaden | Frühwarnsignal | Gegenmassnahme | Zuständig | Status |
|---|---|---|---|---|---|---|---|---|
| R-01 | Henne-Ei-Problem | Kein Angebot → keine Nutzer und umgekehrt | hoch | hoch | tiefe Angebotsdichte, leere Suchen | stadtweise starten, Angebotsseite vorfinanzieren/kuratieren, Ankerformate | Business/GTM | offen |
| R-02 | Unzureichende Angebotsdichte | zu breite Region, zu wenige Anbieter | hoch | hoch | wenige buchbare Termine/Region | regionale Konzentration, wiederkehrende Events | GTM | offen |
| R-03 | Stigmatisierende Positionierung | «Einsamkeits-App» | mittel | hoch | Ablehnung aktiver 65+ | positive Erlebnismarke, Alter als Fokus statt Defizit | Marke | offen |
| R-04 | Geringe Anbieterbereitschaft | unklarer Mehrwert vs. Ticketing | mittel | hoch | Absagen in Anbieterinterviews | Mehrwert belegen (Gäste/Gruppe/Support) | GTM | offen |
| R-05 | Geringe Zahlungsbereitschaft | Preis-/Provisionswiderstand | mittel | hoch | niedrige Buchungs-/Abschlussrate | Pricing per Pilot, gestuftes Modell | Business | offen |
| R-06 | Zu niedrige Marge | kleine Events, hohe variable Kosten | mittel | hoch | Deckungsbeitrag/Event nahe null | Dichte, Wiederholung, Managed Events, B2B | Finanzen | offen |
| R-07 | Hohe Supportkosten | verletzliche Zielgruppe, Telefonhilfe | mittel | mittel | Supportfälle/Buchung steigen | Selfservice + gezielte manuelle Hilfe | Betrieb | offen |
| R-08 | Moderationsaufwand | Chat/Kontakt, Meldungen | mittel | mittel | steigende Meldungen | eventgebundener Chat, Vorfilter, Prozesse | Trust&Safety | offen |
| R-09 | Romance Scam / Betrug | Kontaktfunktionen, ältere Zielgruppe | mittel | hoch | Geldforderungen im Chat | Verifikation, progressive Kontakte, Warnungen | Trust&Safety | offen |
| R-10 | Belästigung/Diskriminierung | offene Kontaktaufnahme | mittel | hoch | Beschwerden | Melden/Blockieren, Moderation, Sanktionen | Trust&Safety | offen |
| R-11 | Fake-/manipulierte Bewertungen | Anreiz zur Schönung | mittel | mittel | untypische Bewertungsmuster | nur bestätigte Teilnahme bewertet, Mindestzahl | Produkt | offen |
| R-12 | Schlechte Datenqualität | unvollständige Eventangaben | mittel | mittel | Rückfragen/Abbrüche | Pflichtfelder, Anbieterprüfung | Produkt | offen |
| R-13 | No-shows | unverbindliche Anmeldung | mittel | mittel | steigende No-show-Rate | verbindliche Zahlung, Erinnerungen, Fristen | Produkt | offen |
| R-14 | Anbieterabsagen | Mindestzahl nicht erreicht | mittel | mittel | häufige Absagen | Warteliste, Aktivierungsimpulse, Kuratierung | GTM | offen |
| R-15 | Rückerstattungsprobleme | unklare Regeln | mittel | mittel | Beschwerden/Chargebacks | klare Regeln, Payment-Provider | Betrieb/Recht | extern zu prüfen |
| R-16 | Haftungsfragen | Vermittlerrolle beschlossen (D-16), juristische Bestätigung offen | mittel | hoch | Rechtsanfragen | Vermittlerrolle pro Angebot ausweisen, juristische Bestätigung einholen | Recht | extern zu prüfen |
| R-17 | Zahlungsregulierung | Halten von Kundengeldern | mittel | hoch | regulatorische Rückfragen | Marketplace-Payment, keine Eigenhaltung | Recht | extern zu prüfen |
| R-18 | Datenschutz (revDSG) | sensible Daten | mittel | hoch | Datenschutz-Beschwerden | Privacy by Design/Default | Recht | extern zu prüfen |
| R-19 | Reiseveranstalterpflichten | Reise-/Pauschalangebote | mittel | hoch | Reiseangebote im Sortiment | gesonderte juristische Prüfung | Recht | extern zu prüfen |
| R-20 | Saisonale Schwankungen | wetter-/saisonabhängige Angebote | mittel | mittel | Nachfrageschwankung | Formatmix, Indoor-Angebote | GTM | offen |
| R-21 | Regionale Fragmentierung | kantonale Vielfalt | mittel | mittel | uneinheitliche Prozesse | regionsweiser Rollout | Betrieb | offen |
| R-22 | Mehrsprachigkeit | CH-Sprachregionen | mittel | mittel | Lokalisierungsaufwand | Start in einer Sprachregion | Produkt | offen |
| R-23 | Zu grosser MVP | Netzwerk+Ticketing+Reise+App | hoch | hoch | Scope-Wachstum | kuratierter regionaler Buchungs-MVP, manuell | Produkt | offen |
| R-24 | Zu frühe App-Entwicklung | native Apps vor Validierung | mittel | mittel | Kosten vor Nutzungsbeleg | Web zuerst | Produkt | offen |
| R-25 | Zu frühe Expansion | Deutschland vor CH-PMF | mittel | hoch | Expansion ohne Wiederbuchungsbeleg | Expansionskriterien einhalten | Business | offen |
| R-26 | Geringe Wiederbuchung | fehlender realer Mehrwert | mittel | hoch | niedrige 60-Tage-Wiederbuchung | Formatqualität, Gruppen, Support | Produkt | offen |
| R-27 | Abhängigkeit von Drittanbietern | Payment/Hosting/Chat | mittel | mittel | Ausfälle/Preisänderungen | austauschbare Anbieter, Verträge | Technik | offen |
| R-28 | Marken-/Domainkonflikt Frello | Namensrechte noch nicht nachgewiesen | mittel | hoch | Kollision bei Recherche | Registrierung/Basisrecherche beschlossen (D-01/D-02), professionelle Recherche vor Markeninvestition | Gründer/Recht | extern zu prüfen |

---

## 34. Roadmap Schweiz

Phasenmodell (Zeiträume bewusst **relativ**, konkrete Termine **[OFFEN]**):

1. **Fundament & Validierung:** `frello.ch` registrieren (D-01) und Schweizer Marken-Basisrecherche inkl. Zefix-Produktnamensprüfung (D-02) anstossen; Social Handles sichern (D-06); **App-Store-Namensprüfung anstossen (D-05, nun organisatorisch anstehend durch D-46; ohne behauptetes Ergebnis)**; rechtliche/steuerliche Erstberatung (Betreiberrolle D-14, Vermittlerrolle D-16, Zahlungsfluss D-17, revDSG); 20–30 Teilnehmenden- und 10–15 Anbieterinterviews.
2. **Concierge-Pilot (Deutschschweiz):** parallel in Zürich, Basel, Bern, Luzern; je Stadt bis **≥5 Anbieter / ≥10 Termine** aufbauen; **gemeinsamer offizieller Start aller vier Städte erst, wenn alle die Schwelle erfüllen (D-37)**, dann **16-wöchige** Pilotmessung (D-36); Ankerformate, manuelle Prozesse (jedes Event manuell freigegeben, D-33); Kernkennzahlen messen; Provision 8 %/15 % validieren (D-11).
3. **Produkt-MVP (Web/PWA zuerst; installierbare PWA verbindlich, D-46):** responsive Plattform mit Suche/**MVP-Pflichtfiltern (D-32)**, verifizierten Anbietern, **Event-Pflichtfeldern und manueller Freigabe (D-31/D-33)**, Buchung/Warteliste/Storno (D-18/19), **Buchungsübertragung (D-40)**, **Absage-/Ausfall-/Wartelisten-Sonderregeln (D-42/D-43/D-44)**, Steckbrief (D-20–22/26), moderiertem Event-Gruppenchat (D-23), **strukturierten Bewertungen (D-24/25/D-34)**, Check-in, Anbieter- und Adminbereich (siehe Kapitel 35). **Native App als Fast-Follow früh/parallel vorbereitet (D-46)**, Freigabe separat (D-45).
4. **Regionale Verdichtung:** Wiederholungsformate, weitere Anbieter, Optimierung von Auslastung und Wiederbuchung.
5. **Schrittweise Ausweitung** innerhalb der Deutschschweiz nach belegten Kennzahlen; **native Apps als Fast-Follow, Start/Ausbau per Gründer-Gesamtbewertung und separater Freigabe (D-45/D-46), ohne feste Kennzahlenschwellen**.

Übergänge zwischen den Phasen sind an belegte Kennzahlen (v. a. wiederholte reale Teilnahme) gebunden, nicht an Kalenderdaten.

---

## 35. Bedingungen für Deutschland (mögliche spätere Expansion)

Deutschland ist **keine** kurzfristig beschlossene Expansion **[BESCHLOSSEN]** (Leitplanke). **Die Expansionsvoraussetzungen sind beschlossen [BESCHLOSSEN] (D-30):** Deutschland wird erst konkret geprüft, wenn **alle vier Schweizer Pilotstädte (Zürich, Basel, Bern, Luzern)** ausreichende **Angebotsdichte, reale Wiederbuchung, tragfähigen Betrieb und kontrollierte Sicherheitsprozesse** belegen. **Nur die operative Deutschland-Expansion bleibt zurückgestellt**, bis diese beschlossenen Schweizer Kriterien erfüllt sind. Ergänzende Voraussetzungen:

- positive Unit Economics oder nachvollziehbarer Weg dorthin;
- rechtliche Prüfung für Deutschland und EU inkl. Namensprüfung (D-03) (**[EXTERN ZU PRÜFEN]**);
- lokalisierbare technische und operative Prozesse.

Eintritt eher **stadt-/regionsweise** (z. B. Süddeutschland) statt sofort landesweit. Wettbewerbsumfeld (Feierabend.de, Seniorentreff.de, nebenan.de, Seniorennetz Berlin) und EU-/deutsche Verbraucher-, Plattform- und Datenschutzanforderungen sind zu berücksichtigen; bei termingebundenen Freizeitveranstaltungen bestehen Ausnahmen vom allgemeinen Widerrufsrecht, die konkrete Vertrags-/Vermittlerrolle ist juristisch sauber festzulegen **[EXTERN ZU PRÜFEN]**.

### MVP-Abgrenzung (Kapitel-übergreifend)

**Möglicher MVP (Stand 31.08.2026):** responsive Plattform als **installierbare PWA (verbindliches MVP-Ziel, D-46)** · regionale Eventsuche mit **MVP-Pflichtfiltern (D-32)** · verifizierte Anbieter · kuratierte Events mit **Pflichtfeldern und manueller Freigabe jedes Events (D-31/D-33)** · Anmeldung/Buchung (nur intern; **keine externen Buchungen, D-39**) · Mindest-/Höchstzahl · Warteliste inkl. **<2-h-Broadcast (D-44)** · **Buchungsübertragung bis 24 h (D-40)** · **volle Bezahlung, keine Teilzahlungen (D-41)** · **Anbieterabsage-/Ausfallregeln mit voller Rückerstattung (D-42/D-43)** · Benachrichtigungen · einfacher Steckbrief · Event-Gruppenchat · **strukturierte Bewertungen (D-34)** · Check-in · Anbieterbereich · Adminbereich · Support (**Rückrufservice Mo–Fr, D-35**) · Moderation · Zugänglichkeitsinformationen. **Keine kostenpflichtige Promotion (D-38).**

**Native App:** **nicht mehr nur «später»**, sondern als **Fast-Follow früh/parallel zum Web/PWA-MVP vorbereitet (D-46)**; Start/Ausbau per Gründer-Gesamtbewertung mit separater Freigabe (D-45), ohne feste Kennzahlenschwellen. Der öffentliche Pilotstart hängt **nicht** von der nativen App ab.

**Später zu prüfen:** offener 1:1-Chat · private Gastgeber · **externe Buchungen und deren Lead-/B2B-Modell (D-13/D-39)** · **kostenpflichtige Promotion (D-12/D-38)** · Social Feed · Gruppen ausserhalb von Events · komplexe Empfehlungsalgorithmen · Treueprogramm · Abonnemente · **Teilzahlungen (D-41)** · eigene Reiseproduktion · Deutschland/weitere Länder · umfassende Automatisierung · KI-basierte Moderation/Empfehlungen.

**Dating-Funktionen gehören nicht automatisch zu einer späteren Roadmap.**

---

## 36. Gründerentscheide und offene Punkte (Zusammenfassung)

Am 28.08.2026 wurde ein erster konsolidierter Gründerentscheid eingearbeitet (D-01…D-30); am **31.08.2026** folgte der **Nachtrag D-31…D-46**. Die vollständige Liste mit Decision-Status, Änderungshistorie und ADR-Verweisen steht in [`02_OPEN_FOUNDER_DECISIONS.md`](./02_OPEN_FOUNDER_DECISIONS.md), die thematischen Nachweise in [`decisions/`](./decisions/README.md).

**Neu entschieden (31.08.2026):** Event-Pflichtfelder (D-31), MVP-Pflichtfilter (D-32), manuelle Event-Freigabe (D-33), strukturierte Bewertungen (D-34), Pilot-Supportzeiten (D-35), Pilotdauer 16 Wochen (D-36), gemeinsamer Pilotstart (D-37, ändert D-29), keine Promotion im MVP (D-38), keine externen Buchungen im MVP (D-39, nimmt D-13 aus MVP-Scope), Buchungsübertragung (D-40), keine Teilzahlungen im MVP (D-41), Anbieterabsage (D-42), Leistungsausfall (D-43), Wartelisten-Broadcast <2 h (D-44), Native-App-Auslösung ohne feste Schwellen (D-45), Web/PWA-MVP + native Fast-Follow (D-46, ändert D-28).

**Weiterhin offen bzw. zu validieren (Auswahl):** Registrar-Nachweis `frello.ch` (D-01) und professionelle Markenrecherche (D-02); Validierung 8 %/15 % (D-11); Provisionsabrechnung Vor-Ort/Zahlungsfluss (D-17); Storno-Detailrecht (D-18); Lead-/B2B- und Promotionsmodell nach Pilot (D-13/D-39, D-12/D-38); dauerhafte Supportzeiten (D-27); Wirksamkeit der Pilotdauer (D-36/A-03); Soft-Launch-Vorschau (D-37); Bewertungs-Detailprozesse (D-34); Guardrails/Grenzen der Buchungsübertragung (D-40); genereller Warteliste-Broadcast (D-44); konkreter Native-App-Startentscheid, Plattformreihenfolge/Framework (D-45/D-46). **Zurückgestellt/nicht anwendbar:** Deutschland/EU-Namensprüfung (D-03); separate Frello-Gesellschaft für den MVP nicht anwendbar (D-04); bei D-30 sind die Expansionskriterien **beschlossen**, nur die operative Deutschland-Expansion wartet auf deren Erfüllung. **Organisatorisch nun anstehend:** App-Store-Namensprüfung (D-05, ohne behauptetes Ergebnis). Rechtliche/steuerliche Punkte bleiben **[EXTERN ZU PRÜFEN]**.

---

## 37. Annahmen (Zusammenfassung)

Die vollständige Liste mit Wertebereichen, Validierungsmethoden und Bestätigungs-/Widerlegungskriterien steht in [`03_ASSUMPTION_REGISTER.md`](./03_ASSUMPTION_REGISTER.md). Wichtigste Finanz-/Modellannahmen: **beschlossene Provisions-Pilotgrundlage 8 % / 15 % (in Validierung)**, Ø Ticketpreis (Illustration), Ø Gruppengrösse/Auslastung, Anteil kostenpflichtiger Events, Wiederbuchungsfenster (60 Tage), Dichteschwelle (≥5 Anbieter / ≥10 Termine je Stadt), **Pilotdauer 16 Wochen (D-36/A-03, zu validieren)**. **Neue Hypothesen aus dem Nachtrag 31.08.2026:** native App wesentlich einfacher für die Zielgruppe als eine installierbare PWA (A-28); Wartelisten-Broadcast <2 h füllt Plätze wirksam ohne Verwirrung (A-29); der Vier-Städte-Parallelbetrieb bleibt unter erhöhter Last (manuelle Freigabe, 16 Wochen, Fast-Follow) leistbar (A-26). Nicht beschlossene Werte sind **[HYPOTHESE]** und im Pilot zu validieren.

---

## 38. Quellen

Vollständiges Register mit Herausgeber, Datum, URL, Abrufdatum, verwendeter Aussage, geografischer Relevanz, Einschränkung und Verifizierungsstatus: [`04_SOURCE_REGISTER.md`](./04_SOURCE_REGISTER.md). Kernquellen: BFS (Altersstruktur, Bevölkerungsszenarien, Altersbild), connect!, Pro Senectute (Digital Seniors 2025), Anbieterseiten (Freizeit60Plus/GemeinsamErleben, Sozialkontakt.ch, Infosenior, Spontacts, Meetup, Eventfrog/Eventbrite, Feierabend.de, Seniorentreff.de, nebenan.de, Seniorennetz Berlin), SECO, EDÖB, FINMA. Wettbewerber-Reichweiten sind Selbstauskünfte.

---

## 39. Empfohlene nächste Schritte

Die grossen Richtungsentscheide sind getroffen; die nächsten Schritte betreffen Umsetzung, Validierung und externe Prüfungen:

1. **`frello.ch` registrieren** und Registrar-Nachweis dokumentieren (D-01); Social Handles sichern (D-06); **App-Store-Namensprüfung anstossen (D-05, nun anstehend)**.
2. **Schweizer Marken-Basisrecherche** (Swissreg/Zefix/Domains) durchführen; professionelle Ähnlichkeitsrecherche vor Markeninvestition beauftragen (D-02).
3. **Rechtliche/steuerliche Erstberatung** einholen: Betreiberstruktur (D-14), Vermittlerrolle (D-16), Zahlungsfluss/Vor-Ort-Abrechnung (D-17), Storno-Detailrecht (D-18), **Feedback-Einsicht/Persönlichkeitsrecht (D-34)**, **Buchungsübertragung/Einwilligung (D-40)**, **Absage-/Erstattungsrecht (D-42/D-43)**, revDSG (Kapitel 30).
4. **Anbietergewinnung je Pilotstadt** bis zur Dichteschwelle **≥5 Anbieter / ≥10 Termine** (D-29); **gemeinsamer Start erst wenn alle vier Städte bereit (D-37)**; 8 %/15 % validieren (D-11).
5. **Interviews** (20–30 Teilnehmende, 10–15 Anbieter) und **Concierge-Pilot** (16 Wochen, D-36) vor Softwarebau (Kapitel 28).
6. **Produktspezifikation V0.1** auf Basis der verankerten Entscheide (D-01…D-46) erarbeiten – ohne Softwarebau.

> **Bereits entschieden (31.08.2026):** Pilotdauer (16 Wochen, D-36) und Pilot-Supportzeiten (Mo–Fr 09–17, D-35). **Weiterhin offen:** exakte Provisionssätze im Pilot validieren (D-11); konkreter Native-App-Startentscheid (D-45).
> **Empfohlener nächster Projektschritt:** Domain/Marke sichern, rechtliche Erstberatung einholen, Anbietergewinnung je Stadt starten und die Produktspezifikation V0.1 vorbereiten – ohne Softwarebau.
