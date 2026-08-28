# Businessplan Frello – Version 0.1

**Stand:** 28. August 2026 · **Status:** Erstentwurf zur Gründerprüfung (nicht freigegeben) · **Startmarkt:** Schweiz · **Mögliche spätere Expansion:** Deutschland

**Zugehörige Dokumente:** [Business-README](./README.md) · [Offene Gründerentscheidungen](./02_OPEN_FOUNDER_DECISIONS.md) · [Annahmenregister](./03_ASSUMPTION_REGISTER.md) · [Quellenregister](./04_SOURCE_REGISTER.md) · [Deep-Research-Analyse](../research/Senioren_Erlebnisplattform_Deep_Research.md)

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

**Aktueller Beschluss-Stand (Kurzüberblick):** Verbindlich beschlossen ist im Wesentlichen nur der **Arbeits- und Produktname «Frello»** sowie die grundsätzliche Produktidee und die strategischen Leitplanken (kein Dating, reale Teilhabe statt Bildschirmzeit, respektvolle Positionierung). Nahezu alle konkreten Parameter (Alterspositionierung, Pilotregion, Preise, Betreiberfirma, Termine) sind **[OFFEN]** oder **[HYPOTHESE]**.

---

## 2. Executive Summary

**Frello** ist eine geplante Schweizer Internetplattform mit späterer App, über die Menschen gemeinsame Freizeitaktivitäten und Veranstaltungen **entdecken, verbindlich buchen und zusammen besuchen** können **[BESCHLOSSEN]** (Grundidee). Der primäre Fokus liegt auf **Pensionierten und älteren Menschen**; die Plattform bleibt grundsätzlich für alle erwachsenen Personen zugänglich **[BESCHLOSSEN]**.

Das gesellschaftliche Umfeld ist tragfähig: In der Schweiz leben rund **1,8 Mio. Personen ab 65 Jahren**, mit langfristig deutlich steigender Tendenz **[MARKTERKENNTNIS]**. Ein relevanter Teil der zu Hause lebenden älteren Menschen fühlt sich häufig einsam (Grössenordnung **80'000–150'000** ab 65 gemäss «connect!») **[MARKTERKENNTNIS]**, und **neun von zehn** Personen über 65 sind online **[MARKTERKENNTNIS]** – bei zugleich heterogenen digitalen Kompetenzen.

Der Markt ist **nicht konkurrenzlos**: Freizeit-Communities (Freizeit60Plus/GemeinsamErleben), Kontaktbörsen (Sozialkontakt.ch), institutionelle Anbieter (Pro Senectute) sowie Event-/Ticketplattformen (Eventfrog, Eventbrite) decken jeweils Teile ab **[MARKTERKENNTNIS]**. Wird Frello nur als «Profile + Chat + Events für 60+» verstanden, ist die funktionale Konkurrenz mittel bis hoch. Der **Differenzierungsraum** liegt in einer klaren Kombination **[HYPOTHESE]**: vertrauenswürdige, seniorengerechte **Kleingruppen-Erlebnisse** mit verifizierten Anbietern, verbindlicher Buchung, Mindest-/Höchstteilnehmerzahl, Warteliste mit Nachrücken, ereignisbezogenem Gruppenchat, Zugänglichkeits- und Mobilitätsangaben, Angehörigen- und Telefonunterstützung sowie Fokus auf **reale, wiederkehrende Teilnahme statt Bildschirmzeit**.

**Geschäftsmodell (Präferenz/Hypothese):** Teilnehmende nutzen Frello kostenlos; Erlöse entstehen primär über erfolgreich vermittelte, bezahlte Buchungen sowie optionale B2B-Leistungen. Ein gestuftes Anbietermodell (kostenloses Inserat → externe Buchung → Standard-Marktplatzbuchung → Managed Event → B2B Plus) wird geprüft. Provisionskorridore (**~6–10 %** Standard, **~12–20 %** Managed Event) sind **[HYPOTHESE]** und per Pilot zu validieren.

**Vorgehen:** Ein regionaler **Concierge-Pilot** (kompakte Region, ~12 Wochen, teils manuelle Prozesse) vor umfassender technischer Umsetzung; **Web zuerst**, native Apps erst nach nachgewiesener wiederkehrender Nutzung **[HYPOTHESE]**.

**North-Star-Metric (Prüfvorschlag):** Anteil der Teilnehmenden, die innerhalb von 60 Tagen erneut ein reales Erlebnis buchen **und tatsächlich besuchen** **[HYPOTHESE]**.

**Gesamteinschätzung:** Attraktiv unter einer klaren Bedingung – Frello darf **kein generisches Seniorennetzwerk** sein, sondern muss Erlebnisbuchung, kleine Gruppen, Vertrauen, Zugänglichkeit und menschlichen Support in den Mittelpunkt stellen. Profile und Chat unterstützen das reale Treffen; sie sind nicht das Hauptprodukt.

---

## 3. Ausgangslage

- Der Gründer hat den Produkt- und Arbeitsnamen **Frello** gewählt **[BESCHLOSSEN]**.
- Es existiert eine Deep-Research-Markt- und Produktanalyse (Stand 28.08.2026), die als Research-Grundlage dient (Source-of-Truth-Rang 6).
- Es liegen keine weiteren verbindlichen Business-, ADR- oder Verfassungsdokumente im Repository vor; es gibt keine vorbestehenden Dokumentkonventionen. Diese Version 0.1 begründet die Struktur unter `docs/business/`.
- Der Markenstatus ist früh: Domain, Marke, Handelsregister-, App-Store- und Social-Handle-Verfügbarkeit sind **nicht geprüft** (siehe Kapitel 8).
- Betreiberfirma, Team und Eigentümerstruktur sind **[OFFEN]**; `Kreativ Solutions GmbH` erscheint in der Research nur als Adressat, nicht als verbindlicher Betreiberentscheid (siehe Kapitel 31).

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

Anbieter veröffentlichen passende Angebote. Potenzielle Anbieter sind u. a. Restaurants, Cafés, Hotels, Ausflugsgastronomie, Reise-/Bus-/Schifffahrtsanbieter, Museen, Theater, Kinos, Kulturhäuser, Kurs-/Tanz-/Kochschulen, Kreativateliers, qualifizierte Sport-/Bewegungsanbieter, Gemeinden, Vereine, Kirchen, Bibliotheken und gemeinnützige Organisationen **[BESCHLOSSEN]** (als Angebotsspektrum). Ob **Privatpersonen** eigene Veranstaltungen anbieten dürfen, ist **[OFFEN]** (D-08).

**Primäre Zielsetzung:** reale, wiederholte Teilnahme, angenehme Gruppenerlebnisse, neue Bekanntschaften, lokale Zugehörigkeit sowie einfache, sichere Buchung. Die Plattform wird **nicht** auf maximale Bildschirmzeit optimiert **[BESCHLOSSEN]**.

**Keine Dating-Plattform:** Partnersuche, romantisches Matchmaking, Swipe-Mechaniken, öffentliche Beliebtheitsranglisten, Teilnehmerbewertungen und ungeschützte offene Kontaktaufnahme sind **nicht** automatisch Teil des Produkts **[BESCHLOSSEN]**.

---

## 8. Markenstatus Frello

- **Frello** ist der vom Gründer gewählte **Arbeits- und Produktname** **[BESCHLOSSEN]**.

**Nicht** beschlossen oder **nicht** verifiziert **[OFFEN]/[EXTERN ZU PRÜFEN]**:

- Die Domain `frello.ch` ist **nicht** registriert und **nicht** gesichert.
- Rechtliche Verfügbarkeit des Namens Frello **nicht** geprüft.
- Schweizer Markenrecherche **nicht** abgeschlossen.
- Verfügbarkeit in Deutschland/EU **nicht** geprüft.
- Handelsregisterkonflikte **nicht** geprüft.
- App-Store-Namen, Social-Media-Handles, internationale Domains **nicht** geprüft.
- Logo, visuelle Identität und definitiver Claim **nicht** entwickelt/beschlossen.

**Zulässige Formulierung:** «Frello ist der vom Gründer gewählte Arbeits- und Produktname.»

**Unzulässig** (und in diesem Plan nicht behauptet): Frello sei eine eingetragene Marke; `frello.ch` gehöre dem Unternehmen oder sei gesichert; Frello sei markenrechtlich konfliktfrei; Frello sei gegründet oder lanciert.

Die zugehörigen Prüf- und Registrierungspunkte sind priorisiert im [Entscheidungsregister](./02_OPEN_FOUNDER_DECISIONS.md) erfasst (D-01 bis D-06): Domainregistrierung, Markenrecherche Schweiz, Prüfung Deutschland/EU, Handelsregisterprüfung, App-Store-Prüfung, Social-Handle-Prüfung. Die tatsächliche Registrierung/Reservierung ist **nicht** Teil dieses Auftrags.

---

## 9. Zielgruppen

### 9.1 Primäre Teilnehmende

- **Aktive Pensionierte (~65–79):** selbstständig, zunehmend digital erreichbar, an gemeinsamen Aktivitäten interessiert; wollen **nicht** als «einsam» etikettiert werden. Die konkrete Alterspositionierung ist **[OFFEN]** (D-07).
- **Menschen in Übergangssituationen:** Pensionierung, Verwitwung, Trennung, Umzug, Verlust bisheriger Kontakte, Auszug erwachsener Kinder, Aufgabe von Verein/Arbeitsplatz, gesundheitlich bedingte Alltagsveränderung. Der Bedarf ist **ereignis-**, nicht rein altersgetrieben **[HYPOTHESE]**.
- **Ältere Menschen mit Unterstützungsbedarf:** benötigen verständliche Bedienung, gut lesbare Darstellung, Telefon-/Rückrufhilfe, Buchung durch Angehörige, klare Mobilitäts- und Barrierefreiheitsangaben, Kommunikation per E-Mail/SMS, verständliche Zahlungs-/Stornoregeln.
- **Jüngere Erwachsene:** grundsätzlich zugänglich; ob einzelne Events einen Altersfokus (z. B. 60+/65+) erhalten, ist veranstaltungsabhängig und **[OFFEN]**.

### 9.2 Angehörige

Angehörige können eine wichtige indirekte Nutzergruppe sein (Empfehlen, gemeinsam suchen, Buchung unterstützen, mit Zustimmung für eine andere Person buchen, Erinnerungen unterstützen). Die rechtliche und datenschutzbezogene Ausgestaltung einer Angehörigenbuchung ist **[OFFEN]/[EXTERN ZU PRÜFEN]** (D-15).

### 9.3 Anbieter (Segmente)

Zu unterscheiden sind kommerzielle Anbieter, öffentliche Institutionen, gemeinnützige Organisationen, Vereine sowie – falls später zugelassen – private Gastgeber. Für jedes Segment gilt ein eigenes Nutzenversprechen (siehe Kapitel 11).

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
| **Private Gastgeber** (falls später zugelassen, D-08) | Zugang zu Nachfrage – nur mit strengeren Vertrauens- und Sicherheitsregeln. |

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

**Offene Profilentscheidungen (D-20, D-21, u. a.):** Profilpflicht für Buchungen, Gast-/kontofreie Buchung, öffentliches Foto, Sichtbarkeit anderer Teilnehmender/besuchter Events/Interessen, exaktes Altersband, Pseudonym vs. echter Vorname, Verifikationsstufen, Angehörigenzugriff. → **[OFFEN]**

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

**Offen (D-18, D-19, u. a.):** genaue Fristen, Reservierungsdauer beim Nachrücken, Stornogebühren, No-show-Regeln, Rückerstattungsfristen, Zahlung vor/nach Erreichen der Mindestzahl, Teilzahlungen, Kulanz, Anbieter-/Wetterabsagen, Ersatzpersonen, Buchungsübertragung. → **[OFFEN]** (Rückerstattungs-/Vertragsdetails zusätzlich **[EXTERN ZU PRÜFEN]**).

### Eventdarstellung (mögliche Felder)

Titel, Beschreibung, Veranstalter (+ Typ), Datum, Beginn/Ende, Treffpunkt, genaue Leistung, vollständiger Preis, enthaltene/nicht enthaltene Leistungen, Mindest-/Höchstzahl, Buchungsschluss, freie Plätze, Wartelistenstatus, Storno-/Absageregeln, Zugänglichkeit, Mobilitätsanforderungen, Sprache, Verpflegung, Kontakt am Veranstaltungstag, «Alleine willkommen», Begleitperson möglich, Altersfokus, Check-in-Methode. Welche Felder **Pflicht** im MVP sind, ist **[OFFEN]**.

---

## 17. Bewertungssystem

**Grundprinzip:** Bewertet werden **Veranstaltungen** (und daraus abgeleitet die Anbieterleistung). Teilnehmende erhalten **keine** öffentliche Sternebewertung **[BESCHLOSSEN]** (Leitplanke).

**Bewertungsberechtigung:** grundsätzlich nur Personen, die verbindlich angemeldet **und** tatsächlich teilgenommen/eingecheckt wurden; die genaue Verifikation ist **[OFFEN]**.

**Empfohlene Standardfragen (Hypothese):**
- Gesamtbewertung «Wie hat dir der Anlass gefallen?» (1–5 Sterne)
- Wohlgefühl «Hast du dich willkommen und wohlgefühlt?» (ja / teilweise / nein)
- Beschreibungstreue «Entsprach der Anlass der Beschreibung?» (ja / teilweise / nein)
- Wiederteilnahme «Würdest du wieder teilnehmen?» (ja / vielleicht / nein)
- Optionales Freitextfeedback (Gefallen / Verbesserung)

**Veranstaltungsspezifische Zusatzkriterien (maximal wenige):** Organisation, Freundlichkeit, Preis-Leistung, Gruppengrösse, Tempo, körperliche Anforderung, Barrierefreiheit, Verpflegung, Treffpunkt, Erreichbarkeit, Möglichkeit neue Personen kennenzulernen. Gesamtes Feedback möglichst in unter einer Minute abschliessbar.

**Öffentliche Anbieterbewertung (mögliche Darstellung):** Sternebewertung, Anzahl bestätigter Bewertungen, Anteil «würde wieder teilnehmen», häufig gelobte Aspekte, wiederkehrende Verbesserungspunkte. **Offen (D-24, D-25):** Mindestanzahl Bewertungen, Gewichtung, Rundung, Alter der Bewertungen, Freitextfreigabe, Anonymität, Anbieterantwort, Einspracheprozess, Moderationsregeln. Die Idee, öffentliche Bewertungen erst ab **fünf** bestätigten Bewertungen anzuzeigen, ist **[HYPOTHESE]**.

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

Die Schweiz ist der vorgesehene **Startmarkt** **[BESCHLOSSEN]** (Rahmen). **Offen** sind Pilotkanton/-stadt, Sprachregion, geografische Abdeckung, mehrsprachiger Start und Markteintrittstermin (D-09, D-10).

**Empfohlene Markteintritts-Hypothese [HYPOTHESE]:** Start in einer kompakten Region → Aufbau ausreichender lokaler Angebotsdichte → schrittweise Expansion. **Zürich** kann als mögliche Pilotregion geprüft werden, ist aber **nicht** beschlossen.

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
| **Kostenloses Inserat / Anfrage** | kostenlose Gemeinde-, Vereins-, Kirchen-, gemeinnützige und ausgewählte Community-Angebote | Keine Provision bei kostenlosen Events; begrenzte Funktionen/kuratierte Freigabe; sichert Angebotsdichte | **[HYPOTHESE]** (D-11, D-12) |
| **Buchung extern** | Anbieter mit eigenem Ticket-/Buchungssystem | Keine Monetarisierung früh / fixe Lead-Gebühr / Marketing- oder B2B-Paket; **kein** Anspruch auf volle 10 % (Transaktion/Storno extern) | **[OFFEN]** (D-13) |
| **Standard-Marktplatzbuchung** | Restaurantabend, Kurs, lokaler Ausflug | Testkorridor **~6–10 %** inkl. Zahlungs-/Plattformleistung; exakte Höhe per Pilot | **[HYPOTHESE]** (D-11) |
| **Managed Event** | Frello konzipiert/vermarktet/betreut das Format | **~12–20 %** oder fixe Produktionsgebühr bzw. Kombination; höhere Leistung → höhere Marge | **[HYPOTHESE]** |
| **B2B Plus** | Ketten, Reiseanbieter, wiederkehrende Gastgeber | Monatstarif für Analytics, CRM-Export, mehrere Standorte, Promotions – **optional**, nicht einzige Monetarisierung | **[HYPOTHESE]** (nicht im MVP) |

**Preisbenchmark [MARKTERKENNTNIS, vor Verwendung gegen offizielle Quelle prüfen]:** Eventfrog nennt kostenlose Einträge sowie (Selbstauskunft) Plus **CHF 0.49 + 2,4 %** und Pro **CHF 0.49 + 3,6 %** pro verkauftem Ticket, jeweils exkl. MWST. **Schlussfolgerung:** Eine Frello-Provision um 10 % ist nur begründbar, wenn Frello **deutlich mehr als Ticketing** liefert (neue passende Gäste, zielgruppenspezifische Reichweite, Gruppenbildung, Warteliste, höhere Auslastung, Support, Moderation, Vertrauens-/Zugänglichkeitsinfrastruktur, wiederkehrende Buchungen, Nachfrageanalysen).

---

## 24. Pricinghypothesen

- Standard-Marktplatzprovision: **~6–10 %** (Testkorridor) **[HYPOTHESE]** – exakter Satz **[OFFEN]** (D-11).
- Managed-Event: **~12–20 %** oder fixe Produktionsgebühr **[HYPOTHESE]**.
- Externe Buchungen: keine feste Provision; Lead-/Marketing-/B2B-Modell **[OFFEN]** (D-13).
- Kostenlose Inserate für gemeinnützige/öffentliche Angebote **[HYPOTHESE]** (D-12).
- Kein obligatorisches Teilnehmenden-Abo **[HYPOTHESE / Gründerpräferenz]**.
- Zahlungsbereitschaft von Anbietern (6 % / 8 % / 10 %) und Teilnehmenden ist **[HYPOTHESE]** und im Pilot per Anbieterinterviews zu testen (siehe Kapitel 28).

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

- Ticketpreis: CHF 70 · Teilnehmende: 16 · Provision: 10 %
- Plattformumsatz: **CHF 112** pro ausverkauftem Event
- 100 vergleichbare Events/Monat: **CHF 11'200** Bruttoumsatz **vor** Zahlungsgebühren, Rückerstattungen, Support, Akquise, Moderation, MWST und Personal.

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

**Möglicher Pilotumfang [HYPOTHESE]:** eine kompakte Region · ~12 Wochen · 5–10 verifizierte Anbieter · 20–30 buchbare Termine · mehrere wiederkehrende Formate · Mischung kostenlos/kostenpflichtig. Formate: Mittagstisch, Bingo, Jass, Quiz, Kulturangebot, gemütlicher Ausflug, Bewegungsangebot, kostenloses Partnerangebot.

**Interviews [HYPOTHESE]:** 20–30 Gespräche mit potenziellen Teilnehmenden und 10–15 Anbieterinterviews – über unterschiedliche Alters-, Digital-, Mobilitäts-, Einkommens-, Lebens- und Regionsgruppen sowie Anbieterarten. Anbieterinterviews prüfen ausdrücklich die Zahlungsbereitschaft für **6 % / 8 % / 10 %**.

**Validierungsfragen:** Teilnehmende – wird real gebucht/teilgenommen? Wiederteilnahme in 60 Tagen? benötigte Unterstützung, fehlende Infos, akzeptierte Preise, wiederholungsstarke Kategorien. Anbieter – zusätzliche Gäste? akzeptable Provision? arbeitssparende Funktionen? Bedeutung von Mindestzahl/Warteliste? benötigte Stornoregeln? nützliche Daten? Supportbedarf?

**Pilotkennzahlen:** Eventansichten, Buchungsrate, Check-in-Rate, No-show-Rate, Wiederbuchung, Erreichen der Mindestzahl, Auslastung, Wartelistennachrücken, Supportfälle/Buchung, Anbieterzufriedenheit, Teilnehmerwohlgefühl, Deckungsbeitrag/Event, Sicherheitsmeldungen und Reaktionszeit.

---

## 29. Vertrauen und Sicherheit

**Vertrauen ist Bestandteil des Kernprodukts, kein Zusatzfeature.**

**Anbieterprüfung (Massnahmen, teils [EXTERN ZU PRÜFEN]):** Handelsregister-/Identitätsprüfung, Bankkontoabgleich, Telefonnummerverifikation, Geschäftsadresse, verantwortliche Kontaktperson, Prüfung der Veranstaltungsbeschreibung, Kennzeichnung des Anbietertyps, Qualifikationsnachweis bei Gesundheits-/Bewegungsangeboten.

**Teilnehmendenschutz:** Telefonnummerverifikation, progressive Kontaktfreischaltung, Melden/Blockieren, menschliche Moderation, Betrugswarnungen, Verbot privater Geldforderungen, Schutz vor Romance Scam/Anlagebetrug/Belästigung/Diskriminierung, Eskalationsprozess, nachvollziehbare Sanktionen. (Das SECO warnt bei Kontakt-/Datingplattformen ausdrücklich vor versteckten Kosten und betrügerischen Geldforderungen **[MARKTERKENNTNIS]**.)

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

**Betreiberfirma, Eigentümerstruktur und Team sind [OFFEN]** (D-14), sofern nicht verbindlich im Repo festgelegt. `Kreativ Solutions GmbH` wird **nicht** automatisch als Betreiberin festgelegt, nur weil der Name (als Adressat der Research) existiert. Legt das Repository dies später ausdrücklich fest, wird es mit Quellenverweis übernommen.

---

## 32. Technisches Grobkonzept

Nur eine technische **Richtung**, keine endgültige Technologieauswahl.

**Empfohlene Hypothese [HYPOTHESE]:** (1) responsive Website → (2) installierbare Web-App o. Ä. → (3) regionaler Pilot → (4) native Apps erst nach nachgewiesener wiederkehrender Nutzung. **Begründung:** bessere Auffindbarkeit, einfachere Nutzung für Angehörige, geringere frühe Entwicklungskosten, schnellere Validierung, einfacherer Support, Vermeidung unnötiger Doppelentwicklung.

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
| R-16 | Haftungsfragen | unklare Veranstalter-/Vermittlerrolle | mittel | hoch | Rechtsanfragen | Rollen pro Angebot, juristische Prüfung | Recht | extern zu prüfen |
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
| R-28 | Marken-/Domainkonflikt Frello | Namensrechte ungeprüft | mittel | hoch | Kollision bei Recherche | Marken-/Domainprüfung (D-01–D-06) | Gründer/Recht | extern zu prüfen |

---

## 34. Roadmap Schweiz

Phasenmodell (Zeiträume bewusst **relativ**, keine Termine – Termine sind **[OFFEN]**, D-10):

1. **Fundament & Validierung:** Namens-/Marken-/Domainprüfung anstossen (D-01–D-06); 20–30 Teilnehmenden- und 10–15 Anbieterinterviews; Pilotregion und Kernsegment festlegen (D-07, D-09).
2. **Concierge-Pilot:** kompakte Region, ~12 Wochen, 5–10 Anbieter, 20–30 Termine, Ankerformate; manuelle Prozesse; Kernkennzahlen messen.
3. **Produkt-MVP:** responsive Plattform mit Suche/Filter, verifizierten Anbietern, Buchung/Warteliste/Storno, Steckbrief, Event-Gruppenchat, Bewertung, Check-in, Anbieter- und Adminbereich (siehe Kapitel 35).
4. **Regionale Verdichtung:** Wiederholungsformate, weitere Anbieter, Optimierung von Auslastung und Wiederbuchung.
5. **Schrittweise regionale Ausweitung** innerhalb der Schweiz nach belegten Kennzahlen.

Übergänge zwischen den Phasen sind an belegte Kennzahlen (v. a. wiederholte reale Teilnahme) gebunden, nicht an Kalenderdaten.

---

## 35. Bedingungen für Deutschland (mögliche spätere Expansion)

Deutschland ist **keine** kurzfristig beschlossene Expansion **[BESCHLOSSEN]** (Leitplanke). Voraussetzungen (Hypothese) vor Prüfung eines Eintritts:

- nachgewiesene Wiederbuchung in der Schweiz;
- wiederholbarer Anbietergewinnungsprozess;
- funktionierende lokale Angebotsdichte;
- positive Unit Economics oder nachvollziehbarer Weg dorthin;
- tragfähiger Moderations- und Supportprozess;
- rechtliche Prüfung für Deutschland und EU (**[EXTERN ZU PRÜFEN]**);
- lokalisierbare technische und operative Prozesse.

Eintritt eher **stadt-/regionsweise** (z. B. Süddeutschland) statt sofort landesweit. Wettbewerbsumfeld (Feierabend.de, Seniorentreff.de, nebenan.de, Seniorennetz Berlin) und EU-/deutsche Verbraucher-, Plattform- und Datenschutzanforderungen sind zu berücksichtigen; bei termingebundenen Freizeitveranstaltungen bestehen Ausnahmen vom allgemeinen Widerrufsrecht, die konkrete Vertrags-/Vermittlerrolle ist juristisch sauber festzulegen **[EXTERN ZU PRÜFEN]**.

### MVP-Abgrenzung (Kapitel-übergreifend)

**Möglicher MVP:** responsive Plattform · regionale Eventsuche · verifizierte Anbieter · kuratierte Events · Anmeldung/Buchung · Mindest-/Höchstzahl · Warteliste · Benachrichtigungen · einfacher Steckbrief · Event-Gruppenchat · Bewertung · Check-in · Anbieterbereich · Adminbereich · Support · Moderation · Zugänglichkeitsinformationen.

**Später zu prüfen:** native Apps · offener 1:1-Chat · private Gastgeber · Social Feed · Gruppen ausserhalb von Events · komplexe Empfehlungsalgorithmen · Treueprogramm · Abonnemente · eigene Reiseproduktion · Deutschland/weitere Länder · umfassende Automatisierung · KI-basierte Moderation/Empfehlungen.

**Dating-Funktionen gehören nicht automatisch zu einer späteren Roadmap.**

---

## 36. Offene Gründerentscheidungen (Zusammenfassung)

Die vollständige, priorisierte Liste steht in [`02_OPEN_FOUNDER_DECISIONS.md`](./02_OPEN_FOUNDER_DECISIONS.md). Prioritär u. a.: Domain `frello.ch` (D-01), Markenrecherche Schweiz (D-02), Prüfung Deutschland/EU (D-03), Betreiberfirma (D-14), Alterspositionierung (D-07), Pilotregion (D-09), Plattform- vs. Veranstalterrolle (D-16), Provisionsmodell (D-11). **Keine** dieser Entscheidungen ist getroffen; keine wird durch diesen Plan getroffen.

---

## 37. Annahmen (Zusammenfassung)

Die vollständige Liste mit Wertebereichen, Validierungsmethoden und Bestätigungs-/Widerlegungskriterien steht in [`03_ASSUMPTION_REGISTER.md`](./03_ASSUMPTION_REGISTER.md). Wichtigste Finanz-/Modellannahmen: Provisionskorridor (~6–10 % / ~12–20 %), Ø Ticketpreis, Ø Gruppengrösse/Auslastung, Anteil kostenpflichtiger Events, Wiederbuchungsfenster (60 Tage), Zahlungsbereitschaft von Anbietern und Teilnehmenden. Alle sind **[HYPOTHESE]** und im Pilot zu validieren.

---

## 38. Quellen

Vollständiges Register mit Herausgeber, Datum, URL, Abrufdatum, verwendeter Aussage, geografischer Relevanz, Einschränkung und Verifizierungsstatus: [`04_SOURCE_REGISTER.md`](./04_SOURCE_REGISTER.md). Kernquellen: BFS (Altersstruktur, Bevölkerungsszenarien, Altersbild), connect!, Pro Senectute (Digital Seniors 2025), Anbieterseiten (Freizeit60Plus/GemeinsamErleben, Sozialkontakt.ch, Infosenior, Spontacts, Meetup, Eventfrog/Eventbrite, Feierabend.de, Seniorentreff.de, nebenan.de, Seniorennetz Berlin), SECO, EDÖB, FINMA. Wettbewerber-Reichweiten sind Selbstauskünfte.

---

## 39. Empfohlene nächste Schritte

1. **Zielregion für den Pilot** festlegen (D-09).
2. **Kernsegment** wählen: aktive 65–79 oder breiter 60+ (D-07).
3. Entscheiden, ob nur professionelle/institutionelle oder später auch **private** Anbieter (D-08).
4. **3–5 Ankerformate** und erste Anbieter gewinnen.
5. **Anbieterinterviews** zur Zahlungsbereitschaft (6 %, 8 %, 10 %) durchführen (D-11).
6. **Concierge-Pilot** vor Softwarebau durchführen.
7. Erst danach **Name, Marke und technische Produktspezifikation** finalisieren (D-01–D-06).
8. Parallel: **Marken-/Domain-/Handelsregister-/App-Store-/Social-Handle-Prüfung** anstossen (D-01–D-06) und **rechtliche/steuerliche Erstberatung** für Zahlungsfluss, Vertragsrolle und revDSG einholen (Kapitel 30).

> **Empfohlener nächster Gründerentscheid:** Pilotregion + Kernsegment (D-09, D-07) – sie steuern fast alle weiteren Annahmen.
> **Empfohlener nächster Projektschritt:** Interviews + Concierge-Pilot vorbereiten (Kapitel 28), ohne Softwarebau.
