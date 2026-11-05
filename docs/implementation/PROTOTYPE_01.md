# Interner Katalog- und Kurationsprototyp – Bauabschnitt 01

- **Stand:** 5. November 2026
- **Grundlage:** Gründerfreigabe «Frello — Bauauftrag 01: Interner Katalog- und Kurationsprototyp»
- **Ausgangsbasis:** `acb92fdeea5f5fec21efa5ddc18c165c2967c6f3`
- **Arbeitsbranch:** `claude/frello-internal-prototype-01`
- **Anwendung:** [`apps/web/`](../../apps/web/)

---

## 1. Was dieser Auftrag freigegeben hat – und was nicht

Dieses Dokument beschreibt einen **begrenzt freigegebenen, lokalen Bauabschnitt**.
Es ist **keine** Gesamtfreigabe der Produktspezifikation V0.1 und **keine** Betriebs-
oder Veröffentlichungsfreigabe.

### Freigegeben

- interner Prototyp parallel zur Validierung;
- Rails mit PostgreSQL als technische Grundlage **dieses Prototyps**;
- lokale Implementierung, Migrationen, synthetische Testdaten, Tests und notwendige
  Entwicklungsabhängigkeiten;
- neuer lokaler Arbeitsbranch ab der bestätigten Ausgangsbasis;
- markenneutrale Oberfläche und neutrale PWA-Testicons.

### Nicht freigegeben

Staging, Commit, Push, Pull Request oder Merge · produktiver Betrieb oder öffentliche
Erreichbarkeit · Deployment, öffentliche Vorschau oder öffentlicher Tunnel · echte
Anbieter-, Teilnehmer- oder Angehörigendaten · echte Buchungen, Zahlungen oder
Nachrichten · Konteneröffnungen bei externen Diensten · native App, App-Framework
oder Store-Veröffentlichung · Verwendung oder Ableitung der Markenmaster.

**Commit, Push, Pull Request und Merge benötigen jeweils eine eigene ausdrückliche
Gründerfreigabe.**

### Unverändert bestehende Status

- Produktspezifikation V0.1: **Entwurf – nicht freigegeben**
  ([`../product/00_PRODUCT_SPEC_V0.1.md`](../product/00_PRODUCT_SPEC_V0.1.md) §12).
- `PUBLIC_PRESENTATION.md` v0.2.0: **Entwurf – nicht freigegeben**.
- Alle offenen Prüfpflichten `OP-001`…`OP-033` bleiben offen. **Keine** externe
  Prüfung ist durch diesen Bauabschnitt erledigt, erleichtert oder vorweggenommen.
- `D-02` Stufe 2 (professionelle markenrechtliche Ähnlichkeitsrecherche) und die
  öffentliche Markensperre gelten **unverändert**.
- Über das Betriebsmodell und den Zeitpunkt der offiziellen 16-Wochen-Pilotmessung
  ist **nicht** entschieden.

Dieser Bauabschnitt trifft **keine** neue Gründerentscheidung, legt **keine** neue
`D-ID` an, erzeugt **keine** ADR und ändert **keinen** Dokumentenfreigabestatus.

---

## 2. Verwendete Versionen

| Bestandteil | Version | Quelle der Versionswahl |
|---|---|---|
| Ruby | 3.3.6 | in der Umgebung vorhanden |
| Rails | 8.1.4.1 | neueste stabile Fassung laut RubyGems-API (`https://rubygems.org/api/v1/versions/rails.json`, abgerufen 05.11.2026); veröffentlicht 04.11.2026; verlangt Ruby ≥ 3.2.0; **keine** Vorabversion |
| PostgreSQL | 16.15 | in der Umgebung vorhanden (Ubuntu 24.04) |
| pg (Gem) | 1.7.0 | Abhängigkeitsauflösung |
| bcrypt | 3.1.x | für `has_secure_password` |
| Propshaft | Rails-Standard | Asset-Auslieferung |

Bewusst **nicht** erzeugt bzw. entfernt: Action Mailer, Action Mailbox, Action Text,
Active Storage, Action Cable, Solid Queue/Cache/Cable, Kamal, Docker, CI-Konfiguration,
JavaScript-Bundling, Hotwire. Es gibt **keinen** Service Worker und **keine**
Hintergrundjobs.

---

## 3. Fachlicher Umfang

### 3.1 Umgesetzte Anforderungen

| ID-Raum | Umgesetzt |
|---|---|
| **FR** | `FR-001`, `FR-002`, `FR-003`, `FR-004`, `FR-032`, `FR-033`, `FR-034`, `FR-035`, `FR-045`, `FR-046`; `FR-036` **nur lesende Anbieter-Eventliste**; `FR-038` **nur Kurationsteil** |
| **BR** | `BR-001`, `BR-004`, `BR-005`, `BR-006`; `BR-007` **nur Erfassung und Anzeige** |
| **ST** | `ST-001`; `ST-002` **nur** die Übergänge zwischen Entwurf, Prüfung, Überarbeitung, Ablehnung und Freigabe/interner Kataloganzeige |
| **DO** | `DO-005`, `DO-006`, `DO-007`, `DO-008`, `DO-024` |
| **EXC** | `EXC-013`, `EXC-014` |
| **PR** | `PR-001`, `PR-002`, `PR-011` |
| **NFR** | `NFR-001`…`NFR-005`, `NFR-008`, `NFR-010` |
| **AC** | `AC-001`…`AC-004`, `AC-032`…`AC-035`, `AC-044`, `AC-045` |

### 3.2 Zuordnung Funktion → Anforderung → Code

| Funktion | Anforderungen | Ort im Code |
|---|---|---|
| Interne Katalogsuche mit MVP-Pflichtfiltern | `FR-001`, `FR-002`, `BR-006`, `AC-001`, `AC-002` | `app/domain/catalog_query.rb`, `app/controllers/catalog_controller.rb`, `app/views/catalog/index.html.erb` |
| Besuchersicht ohne Teilnehmerdaten | `FR-003`, `AC-003` | `app/views/catalog/*` |
| Eventdetailansicht mit D-31-Angaben | `FR-004`, `FR-045`, `AC-004`, `AC-044` | `app/views/catalog/show.html.erb` |
| Anbieterregistrierung und -verifikation | `FR-032`, `FR-033`, `BR-001`, `ST-001`, `EXC-014`, `AC-032`, `AC-033` | `app/domain/provider_lifecycle.rb`, `app/domain/services/submit_provider_for_review.rb`, `app/domain/services/decide_provider_review.rb`, `app/controllers/provider_portal/verifications_controller.rb`, `app/controllers/curation/providers_controller.rb` |
| Evententwurf mit vollständigem D-31-Feldsatz | `FR-034`, `BR-005`, `DO-007`, `AC-034` | `app/domain/d31.rb`, `app/models/event.rb`, `app/views/provider_portal/events/_form.html.erb` |
| Vollständigkeitsprüfung bei Einreichung | `BR-005`, `EXC-013` | `app/domain/event_completeness.rb`, `app/domain/services/submit_event_for_review.rb` |
| Manuelle Kurationsentscheidung | `FR-035`, `BR-004`, `D-33`, `ST-002`, `DO-008`, `AC-035` | `app/domain/event_lifecycle.rb`, `app/domain/services/decide_event_review.rb`, `app/controllers/curation/events_controller.rb` |
| Lesende Anbieter-Eventliste | `FR-036` (Teil) | `app/controllers/provider_portal/events_controller.rb#index` |
| Adminbereich, Kurationsteil | `FR-038` (Teil) | `app/controllers/curation/*` |
| Auditprotokoll | `FR-046`, `PR-011`, `DO-024`, `NFR-010`, `AC-045` | `app/domain/audit_trail.rb`, `app/models/audit_entry.rb`, `app/controllers/curation/audit_entries_controller.rb` |

### 3.3 Der Pflichtfeldsatz D-31, wie er im Repository steht

Gegen beide Primärquellen Wort für Wort geprüft
([`../business/02_OPEN_FOUNDER_DECISIONS.md`](../business/02_OPEN_FOUNDER_DECISIONS.md), D-31;
[`../product/07_DATA_OBJECTS.md`](../product/07_DATA_OBJECTS.md), «Event-Pflichtfelder»).
Beide stimmen überein:

- **21** immer erforderliche Angaben,
- **6** bedingt erforderliche Angaben — davon **eine** im MVP nicht anwendbar
  (Kennzeichnung externer Buchung, `D-31` i. V. m. `D-39`), also **5** aktive,
- **3** freiwillige Angaben.

Maschinenlesbar abgebildet in `app/domain/d31.rb`; die Zählung ist durch
`test/domain/d31_and_completeness_test.rb` abgesichert.

Die Relevanz jeder bedingt erforderlichen Angabe wird **ausdrücklich erfasst** und
nicht angenommen. Beim Qualifikationsnachweis gilt zusätzlich `AC-034`: Bei
Angeboten der Kategorie «Bewegung & Natur» ist er unabhängig von der Markierung
erforderlich. Die Kategorienliste stammt aus Businessplan §14.

#### Zuordnung aller 21 immer erforderlichen Angaben

20 Angaben gibt der Anbieter ein; Angabe 18 wird serverseitig zugeordnet. Der
Einzeltest «jede fehlende eingegebene Pflichtangabe wird einzeln gemeldet» setzt
jede der **20 eingegebenen** Angaben einzeln auf leer. Angabe 18 lässt sich nicht
leeren (NOT-NULL-Fremdschlüssel) und hat deshalb eigene Nachweise.

| D-31 | Bezeichnung (Fachquelle) | Technische Abbildung | Herkunft | Prüfung bei Einreichung | Test |
|---|---|---|---|---|---|
| 01 | Titel | `events.title` | Eingabe | vorhanden | Einzeltest (`d31_and_completeness_test.rb`) |
| 02 | Verständliche Kurzbeschreibung | `short_description` | Eingabe | vorhanden | Einzeltest |
| 03 | Kategorie | `category` (Liste aus Businessplan §14) | Eingabe | vorhanden, Wert aus Liste | Einzeltest |
| 04 | Datum | `event_date` | Eingabe | vorhanden | Einzeltest |
| 05 | Beginn | `start_time` | Eingabe | vorhanden | Einzeltest |
| 06 | Ende | `end_time` | Eingabe | vorhanden | Einzeltest |
| 07 | Veranstaltungsort | `venue_name` | Eingabe | vorhanden | Einzeltest |
| 08 | Vollständige Adresse | `full_address` | Eingabe | vorhanden | Einzeltest |
| 09 | Stadt bzw. Region | `city_region` | Eingabe | vorhanden | Einzeltest |
| 10 | Preis | `price_chf` (≥ 0; 0 = kostenlos) | Eingabe | vorhanden | Einzeltest |
| 11 | Zahlungsart | `payment_method` (online / vor Ort) | Eingabe | vorhanden, Wert aus Liste | Einzeltest |
| 12 | Mindestteilnehmerzahl | `min_participants` | Eingabe | vorhanden | Einzeltest |
| 13 | Höchstteilnehmerzahl | `max_participants` (≥ Mindestzahl) | Eingabe | vorhanden | Einzeltest |
| 14 | Buchungsschluss | `booking_deadline_at` | Eingabe | vorhanden | Einzeltest |
| 15 | Gewähltes Stornomodell | `cancellation_model` (drei Modelle, BR-010) | Eingabe | vorhanden, Wert aus Liste | Einzeltest |
| 16 | Zeitpunkt des Durchführungsentscheids | `decision_point_at` | Eingabe | vorhanden | Einzeltest |
| 17 | Sprache | `language` | Eingabe | vorhanden | Einzeltest |
| **18** | **Verantwortlicher geprüfter Anbieter** | `provider_id` (NOT NULL, Fremdschlüssel) | **serverseitig aus der Sitzung**; Parameter werden verworfen | **zugeordnet UND Anbieter verifiziert** | «Angabe 18 ist nur mit verifiziertem Anbieter erfüllt», «… auf Modellebene verpflichtend», «… auf Datenbankebene verpflichtend und referenziell gesichert», «Freigabe ist ohne verifizierten verantwortlichen Anbieter ausgeschlossen» (`d31_and_completeness_test.rb`); «Anbieter kann die Eigentümerschaft nicht über Parameter umhängen» (`authorization_test.rb`) |
| 19 | Kontaktmöglichkeit | `contact_option` | Eingabe | vorhanden | Einzeltest |
| 20 | Zugänglichkeitsangaben | `accessibility_info` | Eingabe | vorhanden | Einzeltest |
| 21 | Kennzeichnung «Alleine willkommen» | `alone_welcome` (Ja/Nein ausdrücklich gewählt) | Eingabe | gesetzt (leer = fehlt) | Einzeltest |

Die Vollständigkeit der Zuordnung (genau `d31.01`…`d31.21`, jede Angabe eine
Spalte) ist durch «Zuordnung der 21 immer erforderlichen Angaben ist vollständig»
abgesichert.

### 3.4 Was «freigegeben» hier bedeutet

Der Zustand `released` bedeutet in diesem Prototyp **ausschliesslich interne
Kataloganzeige**. Es gibt **keine** Buchbarkeit und **keine** öffentliche
Veröffentlichung. Die Anwendung ist nicht öffentlich erreichbar und setzt
`noindex, nofollow`.

---

## 4. Ausdrückliche Umfangsgrenzen

Keine Pflichtangabe wurde stillschweigend entfernt. Folgende Punkte sind als
Umfangsgrenze ausgewiesen:

| Punkt | Behandlung | Grundlage |
|---|---|---|
| **Kennzeichnung externer Buchung** (D-31, bedingt) | Spalte angelegt, dauerhaft auf «inaktiv» gesperrt (Modellprüfung **und** Datenbank-Check-Constraint), im Formular als gesperrter Bestandteil sichtbar erklärt. **Beschlossener** Zustand, keine Entscheidung dieses Bauabschnitts | `D-31` i. V. m. `D-39`; `07_DATA_OBJECTS.md` |
| **Transparenter Altersfokus** (D-31, bedingt) | Feld vollständig umgesetzt und mit synthetischen Daten belegbar. Der Prototyp begründet **keine** Aussage zur diskriminierungsrechtlichen Zulässigkeit; im Formular als offener Prüfpunkt ausgewiesen | `OP-013` offen, `BR-030` unter Vorbehalt |
| **Veranstaltungsbild** (D-31, freiwillig) | Als Textverweis statt als Dateiupload. Eine Dateiablage ist nicht Bestandteil dieses Bauabschnitts | Umfangsgrenze |
| **`FR-036`** | Nur lesende Eventliste. Verwaltung von Buchungen, Warteliste und Teilnehmerliste fehlt, da es keine Buchungen gibt. `AC-036` ist **nicht** Teil der Freigabe und wird **nicht** beansprucht | Auftragsumfang |
| **`FR-038`** | Nur Kurationsteil. Support, Moderation und Rückerstattungen fehlen. `AC-037` ist **nicht** Teil der Freigabe und wird **nicht** beansprucht | Auftragsumfang |
| **`BR-007`** | Mindest- und Höchstteilnehmerzahl werden erfasst und angezeigt. Es gibt **keine** Wartelistenauslösung | Auftragsumfang |
| **Verfügbare Plätze** | `synthetic_booked_count` ist ein ausdrücklich als synthetisch bezeichneter Testwert, nur für den Filter «verfügbare Plätze». **Keine** Buchungslogik, **keine** echten Teilnehmenden; in der Oberfläche jeweils so beschriftet | Auftragsumfang |
| **Nachträgliche Bearbeitung freigegebener Events** | Nicht Bestandteil. Bearbeitbar ist nur `draft`; serverseitig erzwungen. Zurückgegebene Events siehe unten (ST-002) | Auftragsumfang |
| **Spätere ST-002-Zustände** | `ausgebucht`, `Buchungsschluss erreicht`, `durchgeführt`, `abgesagt`, `ausgefallen`, `abgeschlossen` fehlen vollständig | Auftragsumfang |
| **Anbieterprüfung nach §29** | Register-, Identitäts- und Bankkontoabgleich werden **manuell erfasst**. Es besteht **keine** Schnittstelle zu Registern oder Prüfdiensten; Teile dieser Massnahmen sind in §29 als `[EXTERN ZU PRÜFEN]` geführt | §29 |

### ST-001: Einreichung allein durch den zugeordneten Anbieter

`ST-001` (`docs/product/06_STATE_MODELS.md`): «registriert | Anbieter reicht
Verifikation ein | **Anbieter** | in Prüfung». Umgesetzt: Nur ein Anbieter-Testkonto
kann den **ihm zugeordneten** Anbieter einreichen (`POST /anbieter/verifikation`,
`ProviderPortal::VerificationsController`); der Anbieter wird ausschliesslich aus der
Sitzung bestimmt. Die Kuration hat **keine** Einreichungsberechtigung und entscheidet
erst danach über «verifiziert/aktiv» oder «abgelehnt». Es gibt keine
Anbieter-Selbstregistrierung. Siehe Abschnitt 11 (Korrektur).

**Umfangsgrenze:** Ein über die Kurationsoberfläche neu erfasster synthetischer
Anbieter hat kein Anbieter-Testkonto; Testkonten entstehen ausschliesslich über die
synthetischen Testdaten (`db/seeds.rb`). Ein solcher Anbieter bleibt daher im
Zustand «registriert». Eine Kontoverwaltung ist nicht Bestandteil dieses
Bauabschnitts.

### ST-002: «zur Überarbeitung zurückgegeben» ist im Prototyp ein Endzustand

Geprüft wurden D-33, ADR-008, BR-004, FR-035, ST-002, EXC-013, JRN-014, DO-008,
AC-035 und GL-028. Alle nennen «zur Überarbeitung zurückgegeben» ausschliesslich als
**Ergebnis** der manuellen Prüfung, zum Beispiel:

- `docs/product/06_STATE_MODELS.md`, ST-002: einziger Eintrag mit diesem Zustand ist
  der Eingang «in Prüfung | Pflichtangaben fehlen/unklar | Kuration | zur Überarbeitung
  zurückgegeben»; **kein** ausgehender Übergang.
- `docs/product/08_EXCEPTIONS_ESCALATIONS.md`, EXC-013: «Keine Veröffentlichung;
  Rückgabe «zur Überarbeitung»» – ohne Angabe, wie es danach weitergeht.
- `docs/product/03_USER_JOURNEYS.md`, JRN-014: «… → manuelle Freigabe (freigegeben /
  abgelehnt / zurückgegeben) → nach Freigabe veröffentlicht/buchbar» – kein Rückweg.

Keine Quelle legt fest, **wer** überarbeitet, **ob** das Event zurück in den Entwurf
oder direkt in die Prüfung geht, oder ob ein neuer Entwurf anzulegen ist. Die im
ersten Bericht genannte Begründung («sonst Sackgasse») war eine eigene Ableitung und
keine Fachquelle. Deshalb sind der Übergang `zurückgegeben → in Prüfung` **und** die
Bearbeitung zurückgegebener Events gesperrt (die Bearbeitung diente allein diesem
Übergang und hat keine eigene Quelle). Der Prüfvermerk bleibt für den Anbieter
sichtbar; er kann einen neuen Entwurf anlegen (FR-034).

**Offene Gründerentscheidung:** Wie geht ein zur Überarbeitung zurückgegebenes Event
weiter? Mögliche Varianten: (a) zurück in den Entwurf, bearbeitbar, erneute
Einreichung; (b) direkt erneut einreichbar; (c) Abschluss und neuer Entwurf.
Betroffen: D-33, ST-002, EXC-013, JRN-014.

---

## 5. Daten und Datenschutz

### 5.1 Synthetische Produktdaten

Alle Anbieter und Events sind erfunden. Es gibt **keine** realen Schweizer Anbieter,
**keine** realen Personen und **keine** realen Kontaktdaten. Jeder Datensatz trägt
`synthetic = true`; dies wird durch Datenbank-Check-Constraints erzwungen
(`providers_synthetic_only`, `events_synthetic_only`).

### 5.2 Interne Administrationsdaten

Beim Betrieb des Prototyps fallen **keine** Teilnehmer- oder Angehörigendaten an.
`OP-010`, `OP-011` und `OP-012` werden dadurch **nicht ausgelöst**.

Es fallen jedoch **interne personenbezogene Daten** an: Administrations- und
Kurationskonten realer Personen, IP-Adressen in Server- und Plattformprotokollen,
Auditeinträge mit realen internen Akteuren sowie Fehler- und Monitoringereignisse.
Daraus folgt:

- Datensparsamkeit und Zweckbindung (`PR-001`, `PR-002`) gelten auch hier.
- Protokoll- und Sicherungsaufbewahrung ist zu begrenzen. **Konkrete Fristen werden
  nicht erfunden** (`PR-013`: «Konkrete Fristen/Rechtsfolgen werden nicht erfunden;
  EXTERN ZU PRÜFEN»).

**Keine externe Prüfpflicht ist dadurch erledigt.**

### 5.3 Zugangsdaten

Es gibt **keine Selbstregistrierung** und **keinen E-Mail-Versand**. Die internen
Testkonten werden ausschliesslich beim Einspielen der Testdaten angelegt. Das
Passwort steht in **keiner** Quelldatei: es wird aus
`FRELLO_PROTOTYPE_PASSWORD` gelesen oder zufällig erzeugt und einmalig auf der
Konsole ausgegeben. `config/database.yml` enthält **keine** Zugangsdaten. Auch die
Testsuite enthält kein Passwortliteral: sie erzeugt je Lauf ein zufälliges Passwort.

**Schlüssel:** Der Prototyp benötigt `config/master.key` **nicht**. Geprüft in einer
Kopie ohne diese Datei: Start, Anmeldung, Migrationen, Seeds und Testsuite laufen.
Die Anwendung greift nirgends auf `Rails.application.credentials` zu;
`require_master_key` ist `false`. In Entwicklung und Test bezieht Rails
`secret_key_base` aus `tmp/local_secret.txt`, das beim ersten Start entsteht und
durch `.gitignore` ausgeschlossen ist. `config/credentials.yml.enc` ist für
Entwicklung und Test nicht erforderlich; sie ist mit dem nicht versionierten
`master.key` verschlüsselt und ohne ihn nicht lesbar. Gemäss der erteilten
Commit-Freigabe bleibt die verschlüsselte Datei im Commit enthalten; `master.key`
bleibt ausgeschlossen. Dieser Punkt ist für den aktuellen Commit entschieden.

---

## 6. UX-Grundlage dieses Bauabschnitts

| Vorgabe | Einordnung |
|---|---|
| WCAG 2.2 Stufe **AA** als Zielniveau | WCAG-Anforderung |
| Kontraste, Tastaturbedienbarkeit, sichtbarer Fokus, Textvergrösserung bis 200 % | WCAG-Anforderung (1.4.3, 2.1.1, 2.4.7, 1.4.4) |
| **Zielgrösse zentraler Bedienelemente mindestens 44 × 44 CSS-Pixel** | **Zusätzliche Produktvorgabe, nicht AA.** WCAG 2.2 AA verlangt 24 × 24 (2.5.8); 44 × 44 entspricht 2.5.5 **Stufe AAA** |
| **Relative Grundschrift entsprechend etwa 18 px** | Zusätzliche Produktvorgabe; WCAG schreibt keine Schriftgrösse vor. Umgesetzt als `html { font-size: 112.5% }`, damit Browser- und Systemeinstellung erhalten bleiben |
| **Anrede «Sie»** | Produkt- und Inhaltsentscheid, nicht WCAG |
| **Klare Beschriftungen, verständliche Fehlermeldungen** | `NFR-002`, `NFR-008`; WCAG 2.2 AA verlangt dies in dieser Form nicht |
| **Neutrale Systemschrift, kontraststarke Graustufen** | Produktvorgabe dieses Bauabschnitts |

Suche und wesentliche Formularabläufe funktionieren **ohne JavaScript**; die
Anwendung liefert überhaupt kein JavaScript aus.

### Markenneutralität

Keine Frello-Logos, keine Markenfarben, keine Ableitungen. Die Markenmaster
`assets/brand/frello-symbol.svg` und `assets/brand/frello-wordmark.svg` wurden
**nicht gelesen, nicht verwendet, nicht verändert und nicht abgeleitet**. Die
PWA-Testicons sind neutrale Graustufen-Grundformen (`public/icons/`, dort als
`README.txt` dokumentiert). Eine Favicon- oder App-Icon-Ableitung aus den Mastern
wäre nach [`../../CLAUDE.md`](../../CLAUDE.md) und
[`../brand/BRAND_ASSETS.md`](../brand/BRAND_ASSETS.md) gesondert freizugeben und ist
in Bauauftrag 01 **nicht freigegeben**.

---

## 7. PWA als getrenntes Testpaket

Umfang: **ausschliesslich Installierbarkeit**. Kein Service Worker, keine
Offline-Funktion, kein Push, keine fachlichen Hintergrundjobs.

Die drei Dinge sind getrennt zu halten (Quelle: MDN, «Making PWAs installable»,
abgerufen 05.11.2026):

| Fähigkeit | Voraussetzung | In diesem Bauabschnitt |
|---|---|---|
| **Installierbarkeit** | Manifest + HTTPS bzw. `localhost`/`127.0.0.1`; Chromium zusätzlich `name` oder `short_name`, Icons mit 192 px **und** 512 px, `start_url`, `display`, `prefer_related_applications` false oder fehlend | **umgesetzt** |
| **Offline-Verhalten** | Service Worker mit Cache-Strategie | **nicht enthalten** |
| **Push** | Service Worker + Push API; auf iOS nur für auf dem Startbildschirm installierte Web-Apps | **nicht enthalten** |

Ein Service Worker ist für die Installierbarkeit **nicht** erforderlich. Die von Rails
erzeugten, nicht gerouteten Dateien `app/views/pwa/service-worker.js` und
`manifest.json.erb` wurden entfernt; das Manifest wird von `PwaController`
ausgeliefert.

---

## 8. Lokale Start- und Testanleitung

Voraussetzungen: Ruby 3.3.6, PostgreSQL 16 (laufender Cluster), `libpq-dev`.

```sh
cd apps/web

# Abhängigkeiten
bundle install

# Datenbanken anlegen und Schema einspielen
bin/rails db:create
bin/rails db:migrate

# Synthetische Testdaten; das Passwort wird einmalig auf der Konsole ausgegeben
bin/rails db:seed
# optional mit eigenem Passwort:
# FRELLO_PROTOTYPE_PASSWORD='…' bin/rails db:seed

# Server starten (nur lokal, nicht öffentlich binden)
bin/rails server -b 127.0.0.1 -p 3000

# Alle Prüfungen
bin/rails test
```

Weicht die lokale PostgreSQL-Anbindung ab, lassen sich `FRELLO_DB_HOST`,
`FRELLO_DB_USER` und `FRELLO_DB_PASSWORD` als Umgebungsvariablen setzen. Für
getrennte Prüfdatenbanken eignet sich die Rails-Standardvariable `DATABASE_URL`
(z. B. `DATABASE_URL=postgres:///frello_check_test`), zusammen mit
`SKIP_TEST_DATABASE=true`, damit `db:create` die Standard-Testdatenbank nicht berührt.

Ein `config/master.key` ist **nicht** erforderlich.

### Einstiegspunkte

| Pfad | Inhalt |
|---|---|
| `/katalog` | Besuchersicht: Suche mit den MVP-Pflichtfiltern |
| `/katalog/:id` | Eventdetail (nur freigegebene Events) |
| `/anmeldung` | Anmeldung der internen Testrollen |
| `/anbieter/events` | Anbieter: eigene Events, Verifikation einreichen (ST-001), Entwurf anlegen, einreichen |
| `/kuration/anbieter` | Kuration: Anbieter erfassen und prüfen |
| `/kuration/events` | Kuration: Evententwürfe prüfen und entscheiden |
| `/kuration/audit` | Auditprotokoll (nur lesend) |
| `/manifest.webmanifest` | PWA-Manifest |

---

## 9. Verifikation

Trennung nach bestanden / fehlgeschlagen / nicht ausgeführt siehe Abschlussbericht
des Bauauftrags. Kurzfassung:

- **Automatisierte Prüfungen:** 108 Prüfläufe, 727 Zusicherungen, 0 Fehlschläge
  (`bin/rails test`, Stand nach der Nachbesserung, Abschnitt 11).
- **Browserprüfung:** Chromium über Playwright; zentrale Abläufe, Tastaturbedienung,
  Fokusdarstellung, Zielgrössen, Textvergrösserung auf 200 %.
- **Automatisierter Barrierefreiheitsscan:** axe-core 4.10.2 über acht Bildschirme,
  Regelsätze `wcag2a`, `wcag2aa`, `wcag21a`, `wcag21aa`, `wcag22aa`: **0 Verstösse**
  (erneut ausgeführt nach der Nachbesserung).
- **Textvergrösserung 200 %:** alle 17 erreichbaren Bildschirme bei 390 px Breite
  ohne horizontalen Überlauf (nach der Nachbesserung).
- **Kontrastmessung:** 25 Kombinationen gemessen, alle bestanden.

> **Aus einzelnen automatisierten Prüfungen folgt keine vollständige
> WCAG-2.2-AA-Konformität.** Mehrere Erfolgskriterien sind maschinell nicht
> entscheidbar und erfordern manuelle Prüfung. Die offenen manuellen Prüfungen sind
> im Abschlussbericht ausgewiesen.

### Nicht ausgeführt

- **Installationsprüfung auf realen iOS- und Android-Geräten.** In der
  Entwicklungsumgebung stehen keine realen Geräte und kein interner HTTPS-Testzugang
  zur Verfügung. `localhost` auf einem Smartphone erreicht den Entwicklungsrechner
  **nicht**. Eine Handtestanleitung steht im Abschlussbericht. Es wurde **kein**
  öffentlicher Zugang und **kein** externer Dienst angelegt.
- **Screenreader-Prüfung mit echten Hilfsmitteln** (VoiceOver, TalkBack, NVDA).

---

## 10. Architekturhinweis

Die Fachlogik liegt in `app/domain/` in eigenständigen Komponenten:

- `d31.rb` – Pflichtfeldsatz als maschinenlesbare Fassung des Entscheids
- `event_completeness.rb` – Vollständigkeitsprüfung (`BR-005`, `AC-034`)
- `provider_lifecycle.rb`, `event_lifecycle.rb` – erlaubte Zustandsübergänge
- `catalog_query.rb` – MVP-Pflichtfilter
- `audit_trail.rb` – Protokollierung
- `services/` – die vier fachlichen Vorgänge

Keine Geschäftsregel liegt ausschliesslich in einer Oberflächenkomponente. Jeder
Zustandswechsel wird zusammen mit Prüfergebnis und Auditeintrag in **einer**
Datenbanktransaktion geschrieben; eine fehlgeschlagene Aktion hinterlässt keinen
Freigabezustand (abgesichert durch `test/services/event_review_test.rb`).

Es wurde **keine** separate Backend-Anwendung und **keine** vollständige externe
HTTP-API gebaut. Es wurde **kein** App-Framework festgelegt; `D-45` und `D-46`
bleiben unberührt.

---

## 11. Nachbesserung (Auftrag «Gezielte Nachbesserung und Abschlussprüfung»)

Freigegeben waren ausschliesslich lokale Korrekturen in `apps/web/` und in diesem
Dokument. Keine neue Produktfunktion, keine neue D-ID, keine ADR, keine Änderung
bestehender Produkt- oder Businessdokumente.

| # | Befund | Korrektur | Code / Tests |
|---|---|---|---|
| 1 | Die Kuration konnte `registriert → in Prüfung` stellvertretend auslösen. ST-001 weist den Übergang allein dem **Anbieter** zu; die Stellvertretung war nicht freigegeben. | Stellvertretung entfernt. Einreichung nur durch das Anbieter-Testkonto für den ihm zugeordneten Anbieter. Der frühere Kurationsschritt ist auf keinem Weg mehr erreichbar. | `app/domain/provider_lifecycle.rb`, `app/domain/services/submit_provider_for_review.rb`, `app/controllers/provider_portal/verifications_controller.rb`, `app/controllers/curation/providers_controller.rb`; `test/integration/provider_verification_test.rb` (14 Prüfungen), `test/domain/lifecycle_test.rb` |
| 2 | `zurückgegeben → in Prüfung` war aus dem Zustandsnamen abgeleitet, nicht aus einer Fachquelle. | Übergang und Bearbeitung zurückgegebener Events gesperrt; Einschränkung in der Oberfläche erklärt; offene Entscheidung in Abschnitt 4. | `app/domain/event_lifecycle.rb`, `app/views/provider_portal/events/show.html.erb`; `lifecycle_test.rb`, `event_review_test.rb`, `end_to_end_flow_test.rb` |
| 3 | D-31 Angabe 18 lautet «verantwortlicher **geprüfter** Anbieter»; die Vollständigkeitsprüfung verlangte nur eine Zuordnung. | Angabe 18 gilt nur bei verifiziertem Anbieter als erfüllt. Eigene Nachweise für Pflicht, Zuordnung und Prüfstatus. | `app/domain/event_completeness.rb`; `d31_and_completeness_test.rb` |
| 4 | Entscheidknöpfe zeigten interne Werte («released», «returned», «rejected», «verify», «reject») statt deutscher Beschriftungen: `submit_tag` mit `value:` überschreibt die Beschriftung. Im ersten Bericht übersehen. | Umstellung auf `<button>` mit getrennt gesetztem Wert. | `app/views/curation/events/show.html.erb`, `app/views/curation/providers/show.html.erb`; Regressionstest in `accessibility_markup_test.rb` |
| 5 | `<legend>` lief bei 200 % Textvergrösserung über (Anbieter-Detailseite der Kuration). | `legend` auf Fieldset-Breite begrenzt und umbrechbar. | `app/assets/stylesheets/application.css` |
| 6 | `db/schema.rb` im Arbeitsbaum war eine gleichwertige, aber nicht reproduzierbare Darstellung einiger Check-Constraints; jede frische Migration hätte sie umgeschrieben. | Durch die reproduzierbare Form ersetzt (identisch für frische Migration und für Laden mit erneutem Dump). Schema inhaltlich unverändert. | `db/schema.rb` |
| 7 | Testsuite enthielt ein festes Testpasswort. | Zufälliges Passwort je Testlauf. | `test/test_helper.rb` |

### Prüfung aus den versionierbaren Dateien

In einer Kopie ausserhalb des Arbeitsbaums aus `git ls-files --cached --others
--exclude-standard` (ohne `.git/`, ohne `config/master.key`, ohne `.env`, ohne
Datenbankinhalte, ohne `log/`- und `tmp/`-Inhalte) mit unverändertem `Gemfile.lock`
(`BUNDLE_FROZEN=true`) und eigens angelegten Datenbanken: Abhängigkeiten erfüllt,
Migration, Seeds, Start, Anmeldung beider Rollen, Verifikationseinreichung durch den
Anbieter und Testsuite erfolgreich. Bestehende Datenbanken blieben unberührt; die
Prüfdatenbanken und die Kopie wurden danach entfernt.

Ein Geheimnis-Scan der vorgesehenen Dateien (private Schlüssel, Token-Muster,
Passwortliterale, Zugangsdaten in Datenbank-URLs, Klartext-`secret_key_base`,
Datenbankkopien, Protokolle) ergab **keine Treffer**.

### Entschieden für den aktuellen Commit

- `config/credentials.yml.enc` bleibt gemäss der erteilten Commit-Freigabe enthalten;
  `config/master.key` bleibt ausgeschlossen. Für Entwicklung und Test ist die Datei
  nicht nötig und ohne den nicht versionierten Schlüssel nicht lesbar.

### Weiterhin offen

- Gründerentscheidung zum weiteren Ablauf zurückgegebener Events (Abschnitt 4).
- Reale iOS-/Android-Installationsprüfung und Screenreader-Prüfung (Abschnitt 9).
