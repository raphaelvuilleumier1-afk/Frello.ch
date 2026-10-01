# 11 · Akzeptanzkriterien

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Funktionale Anforderungen](./04_FUNCTIONAL_REQUIREMENTS.md) · [Geschäftsregeln](./05_BUSINESS_RULES.md)

Messbare fachliche Akzeptanzkriterien in Given/When/Then. **Kein** Testframework/Testcode. Je AC: FR-/BR-Bezug · ggf. ST/DO/EXC · Given/When/Then · Quelle · Klasse.

---

**AC-001** (FR-001/BR-006; DO-007) — VERBINDLICH · D-32/ADR-008
*Given* freigegebene Events bestehen. *When* eine Person die Eventsuche öffnet. *Then* werden nur freigegebene Events als Treffer angezeigt.

**AC-002** (FR-002/BR-006) — VERBINDLICH · D-32/ADR-008
*Given* die Suche ist geöffnet. *When* die MVP-Filter angewendet werden. *Then* stehen genau die Filter Stadt/Region, Datum/Zeitraum, Kategorie, Preis, kostenlos, Zugänglichkeit, Aktivitätsniveau, «Alleine willkommen», verfügbare Plätze bereit und filtern korrekt; zurückgestellte Filter fehlen.

**AC-003** (FR-003/BR-023; PR-008) — VERBINDLICH · D-21/ADR-005
*Given* eine nicht angemeldete Person. *When* sie ein Event ansieht. *Then* sieht sie nur die Teilnehmerzahl, keine Namen/Profile.

**AC-004** (FR-004/BR-005; DO-007) — VERBINDLICH · D-31/ADR-008
*Given* ein freigegebenes Event. *When* die Detailseite geöffnet wird. *Then* sind alle immer erforderlichen Pflichtangaben nach D-31 sichtbar.

**AC-005** (FR-005/BR-002; DO-001) — VERBINDLICH · D-20/ADR-005
*Given* eine Person ohne Konto. *When* sie buchen möchte. *Then* ist die Buchung ohne Konto nicht möglich (keine Gastbuchung).

**AC-006** (FR-006/BR-003; ST-006) — VERBINDLICH · D-26/ADR-005
*Given* ein Konto ohne Telefonverifikation. *When* die erste Buchung versucht wird. *Then* wird die Buchung verhindert, bis die Telefonnummer verifiziert ist.

**AC-007** (FR-007/BR-023; PR-003) — VERBINDLICH · D-21/D-22 · ADR-005
*Given* ein Kontoinhaber. *When* das Profil gepflegt wird. *Then* sind nur die vorgesehenen Steckbrieffelder verfügbar; genaues Geburtsdatum bleibt privat.

**AC-008** (FR-008/BR-023; PR-005) — VERBINDLICH · D-21/D-22/ADR-005
*Given* eine bestätigte Teilnahme. *When* die Eventgruppe angezeigt wird. *Then* sind Vorname und freiwilliges Foto sichtbar, aber weder genaues Geburtsdatum noch Telefonnummer.

**AC-009** (FR-009/BR-002/BR-015; ST-003) — VERBINDLICH · D-20/D-39 · ADR-005/ADR-003
*Given* eine telefonverifizierte Person und freie Plätze. *When* sie bucht. *Then* entsteht eine interne Buchung; keine Weiterleitung an externe Buchungssysteme.

**AC-010** (FR-010/BR-013/BR-014; DO-010) — TEILWEISE BESCHLOSSEN · D-17/D-41 · ADR-004
*Given* ein Event mit Online-Zahlung. *When* online bezahlt wird. *Then* erfolgt Vollzahlung und die Buchung gilt als bezahlt/bestätigt. *Hinweis:* Zahlungsfluss EXTERN ZU PRÜFEN (OP-008).

**AC-011** (FR-011/BR-013; DO-010) — TEILWEISE BESCHLOSSEN · D-17 · ADR-004
*Given* ein Event mit Vor-Ort-Zahlung. *When* diese Zahlungsart gewählt wird. *Then* gilt die Buchung als bestätigt, Zahlung erfolgt beim Anbieter. *Hinweis:* Provisionsabrechnung EXTERN ZU PRÜFEN (OP-008).

**AC-012** (FR-012/BR-014; DO-010) — VERBINDLICH · D-41 · ADR-004
*Given* eine Online-Buchung. *When* bezahlt wird. *Then* ist nur Vollzahlung möglich; Teil-/Ratenzahlung wird nicht angeboten.

**AC-013** (FR-013/BR-025; DO-004; PR-006) — VERBINDLICH · D-15/ADR-005
*Given* eine buchende Person mit Konto und Verifikation. *When* sie für eine andere teilnehmende Person bucht. *Then* werden buchende und teilnehmende Person getrennt geführt; die teilnehmende Person benötigt kein eigenes Konto.

**AC-014** (FR-014/BR-007/BR-008; ST-004; EXC-002) — VERBINDLICH · D-19/ADR-004
*Given* ein Event hat die Höchstzahl erreicht. *When* eine weitere Person sich anmelden will. *Then* wird sie in Eintragungsreihenfolge auf die Warteliste gesetzt.

**AC-015** (FR-015/BR-008; ST-005; EXC-003) — VERBINDLICH · D-19/ADR-004
*Given* ein Platz wird regulär frei. *When* das Nachrückangebot ergeht. *Then* erhält die erste berechtigte Person ein befristetes Angebot (12 h; bei <24 h 2 h); nach Ablauf rückt die nächste Person nach.

**AC-016** (FR-016/BR-009; EXC-004) — VERBINDLICH · D-44/ADR-004
*Given* ein Platz wird <2 h vor Beginn frei. *When* der Broadcast ergeht. *Then* erhalten alle berechtigten Wartenden gleichzeitig das Angebot; die erste vollständig bestätigte digitale Zusage erhält den Platz; sagt niemand zu, bleibt der Platz frei; keine Vor-Ort-Vergabe an Unverifizierte.

**AC-017** (FR-017/BR-010; DO-007) — VERBINDLICH · D-18/ADR-004
*Given* ein Anbieter legt ein Event an. *When* das Stornomodell gewählt wird. *Then* ist genau eines der drei Modelle (Flexibel/Standard/Fix) wählbar; freie Klauseln sind nicht möglich.

**AC-018** (FR-018/BR-010; ST-003/ST-009; EXC-015) — VERBINDLICH · D-18/ADR-004
*Given* eine bestätigte Buchung. *When* die Person nach gewähltem Modell storniert. *Then* erfolgt die Rückerstattung gemäss Modellregeln.

**AC-019** (FR-019/BR-011; ST-002; EXC-001) — VERBINDLICH · D-19/ADR-004
*Given* die Mindestzahl ist bis zum Durchführungsentscheid (≤48 h) nicht erreicht. *When* der Anbieter entscheidet. *Then* kann er absagen oder durchführen; bei Absage wird nach Regeln rückerstattet.

**AC-020** (FR-020/BR-018; EXC-006/EXC-007) — TEILWEISE BESCHLOSSEN · D-42/ADR-004
*Given* eine Anbieterabsage bei Online-Zahlung. *When* die Absage erfolgt. *Then* ist die volle Rückerstattung Standard und Wahlrecht; eine Umbuchung darf zusätzlich angeboten werden. *Hinweis:* Recht EXTERN ZU PRÜFEN (OP-009).

**AC-021** (FR-021/BR-019; EXC-008; PR-011) — TEILWEISE BESCHLOSSEN · D-43/ADR-004
*Given* eine zentrale Leistung fällt aus. *When* der Ausfall eintritt. *Then* gilt volle Rückerstattung als Standard, die Betroffenen werden aktiv informiert und der Vorgang wird auditierbar dokumentiert.

**AC-022** (FR-022/BR-018/BR-019; ST-009) — TEILWEISE BESCHLOSSEN · D-42/D-43 · ADR-004
*Given* Absage/Ausfall. *When* eine Umbuchung angeboten wird. *Then* hat die teilnehmende Person das Wahlrecht und muss keine Umbuchung akzeptieren.

**AC-023** (FR-023/BR-017; DO-013; EXC-009; PR-007) — TEILWEISE BESCHLOSSEN · D-40/ADR-004
*Given* eine bestätigte Buchung. *When* sie ≥24 h vor Beginn übertragen wird. *Then* ist dies selbstständig an eine Person mit Konto + Telefonverifikation möglich, die Platzanzahl bleibt unverändert, Rechte wandern, der Vorgang wird protokolliert; <24 h nur über Support.

**AC-024** (FR-024/BR-012; ST-006; EXC-010) — VERBINDLICH · D-19/ADR-004
*Given* wiederholtes Nichterscheinen ohne Absage. *When* der Wiederholungsfall eintritt. *Then* greift eine zeitweise Buchungsbegrenzung mit Einsprachemöglichkeit; keine automatische Geldstrafe.

**AC-025** (FR-025/BR-024; DO-019; PR-009) — VERBINDLICH · D-23/ADR-005
*Given* eine bestätigte Teilnahme. *When* der Chat genutzt wird. *Then* ist nur der moderierte Event-Gruppenchat verfügbar; kein freier 1:1-Chat; Telefonnummern bleiben verborgen.

**AC-026** (FR-026/BR-024; DO-021; EXC-012; PR-012) — VERBINDLICH · D-23 · ADR-005 (§29)
*Given* ein problematischer Beitrag/Kontakt. *When* gemeldet/blockiert wird. *Then* wird der Fall menschlich moderiert; dringende Sicherheitsmeldungen werden priorisiert.

**AC-027** (FR-027/FR-037/BR-020; ST-007; DO-016) — VERBINDLICH · D-19/D-24 · ADR-004/ADR-006
*Given* eine bestätigte Buchung. *When* der Anbieter vor Ort eincheckt. *Then* gilt die Person als teilgenommen und wird bewertungsberechtigt.

**AC-028** (FR-028/BR-020; ST-008) — VERBINDLICH · D-24/ADR-006
*Given* eine Person ohne Check-in. *When* sie bewerten möchte. *Then* ist die Bewertung nicht möglich; nur eingecheckte, verifizierte Teilnehmende dürfen bewerten.

**AC-029** (FR-029/BR-021; DO-017) — VERBINDLICH · D-34/ADR-006
*Given* eine bewertungsberechtigte Person. *When* sie bewertet. *Then* werden fünf öffentliche Kategorien erfasst und die Zugänglichkeit strukturiert, aber intern.

**AC-030** (FR-030/BR-021; ST-008; DO-017) — VERBINDLICH · D-24/D-34/ADR-006
*Given* ein Anbieter/Event mit Bewertungen. *When* die öffentliche Note angezeigt wird. *Then* erscheint sie erst ab fünf bestätigten Bewertungen als gleichgewichteter arithmetischer Durchschnitt der fünf öffentlichen Kategorien, gerundet auf eine Dezimalstelle, mit sichtbarer Anzahl.

**AC-031** (FR-031/BR-022; DO-018; PR-010) — VERBINDLICH · D-25/D-34/ADR-006
*Given* internes Freitextfeedback. *When* ein Anbieter es einsieht. *Then* erhält er nur anonymisierte Einsicht und eine nicht öffentliche Einsprachemöglichkeit; keine öffentliche Anbieterantwort. *Hinweis:* Persönlichkeitsrecht EXTERN ZU PRÜFEN (OP-012).

**AC-032** (FR-032/BR-001; ST-001; EXC-014) — VERBINDLICH · D-08 · ADR-003 (§29)
*Given* ein neuer Anbieter. *When* er Events einreichen will. *Then* ist dies erst nach erfolgreicher Verifikation möglich.

**AC-033** (FR-033/BR-001; DO-005) — VERBINDLICH · D-08/ADR-003
*Given* ein privater Gastgeber. *When* er sich als Anbieter registrieren will. *Then* ist er im MVP nicht zugelassen.

**AC-034** (FR-034/BR-005; ST-002; DO-007; EXC-013) — VERBINDLICH · D-31/ADR-008
*Given* ein geprüfter Anbieter. *When* er ein Event als Entwurf anlegt. *Then* sind die immer erforderlichen Pflichtfelder nach D-31 zu erfassen; bei Bewegungs-/Gesundheitsangeboten ist der Qualifikationsnachweis bedingt erforderlich.

**AC-035** (FR-035/BR-004; ST-002; DO-008; EXC-013) — VERBINDLICH · D-33/ADR-008
*Given* ein eingereichter Evententwurf. *When* Frello prüft. *Then* ist das Ergebnis freigegeben, abgelehnt oder zur Überarbeitung zurückgegeben; ohne vollständige Pflichtangaben keine Veröffentlichung; keine automatisierte/KI-Freigabe.

**AC-036** (FR-036/BR-007/BR-008; DO-009/DO-011) — VERBINDLICH · D-19/D-31 · ADR-004/ADR-008 (§12)
*Given* ein freigegebenes Event. *When* Buchungen/Warteliste eingehen. *Then* kann der Anbieter Buchungen, Warteliste und Teilnehmerliste verwalten.

**AC-037** (FR-038/BR-004; DO-024) — VERBINDLICH · D-33 · ADR-008 (§31)
*Given* laufender Betrieb. *When* Prüfung/Support/Moderation/Rückerstattung nötig ist. *Then* stehen diese im Adminbereich zur Verfügung und werden protokolliert.

**AC-038** (FR-039/BR-026; ST-011) — PILOTPARAMETER · D-35/ADR-005
*Given* eine Supportanfrage. *When* sie eingeht. *Then* erfolgt der Rückruf Mo–Fr 09–17 innerhalb eines Werktags; ausserhalb asynchron; dringende Sicherheit priorisiert.

**AC-039** (FR-040/BR-012/BR-024; ST-010; EXC-011/EXC-012) — VERBINDLICH · D-35 · ADR-005 (§29)
*Given* eine Sicherheits-/Missbrauchsmeldung. *When* sie eingeht. *Then* wird sie menschlich und – bei Dringlichkeit – priorisiert bearbeitet; Sanktionen sind nachvollziehbar und mit Einsprache versehen.

**AC-040** (FR-041/BR-034) — VERBINDLICH · D-12/ADR-003
*Given* ein geprüfter Anbieter mit kostenloser Veranstaltung. *When* er inseriert. *Then* ist das Inserat kostenlos (keine Provision bei kostenlosen Events).

**AC-041** (FR-042/BR-016) — VERBINDLICH · D-38/ADR-003
*Given* der MVP-Betrieb. *When* Events gereiht/angezeigt werden. *Then* gibt es keine kostenpflichtige Promotion/bevorzugte Platzierung; die Reihung ist rein inhaltlich.

**AC-042** (FR-043/BR-015; DO-007) — VERBINDLICH · D-39/ADR-003
*Given* ein Event im MVP. *When* Buchung erfolgt. *Then* erfolgt sie intern; keine Weiterleitung an externe Buchungssysteme; das Feld «Kennzeichnung externer Buchung» ist inaktiv.

**AC-043** (FR-044/BR-008/BR-019; DO-012) — VERBINDLICH · D-43 · ADR-004 (§16)
*Given* ein relevantes Ereignis (Buchung, Nachrücken, Absage/Ausfall). *When* es eintritt. *Then* wird die betroffene Person fachlich benachrichtigt (technische Kanalwahl nicht festgelegt).

**AC-044** (FR-045/BR-005; DO-007) — VERBINDLICH · D-31 · ADR-008 (§16)
*Given* ein Event. *When* es veröffentlicht wird. *Then* sind Zugänglichkeitsangaben vorhanden; Aktivitätsniveau/Verpflegung sind bei Relevanz angegeben.

**AC-045** (FR-046/PR-011; DO-024) — VERBINDLICH · D-33/D-40/D-43 · ADR-008/ADR-004
*Given* ein auditrelevanter Vorgang (Anbieterprüfung, Eventfreigabe, Übertragung, Ausfall/Absage, Rückerstattung, Sanktion, Einsprache). *When* er stattfindet. *Then* wird er nachvollziehbar protokolliert.

---

## Abdeckungshinweis

Jede verbindliche `FR` besitzt mindestens ein `AC` (FR-037 teilt AC-027 mit FR-027). Die `BR` sind über die jeweils referenzierten `FR`/`AC` abgedeckt; die vollständige Zuordnung steht in [`12_TRACEABILITY_MATRIX.md`](./12_TRACEABILITY_MATRIX.md). Kriterien zu TEILWEISE BESCHLOSSENEN Punkten prüfen nur den beschlossenen fachlichen Grundsatz; extern zu prüfende Details bleiben Platzhalter ([`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md)).
