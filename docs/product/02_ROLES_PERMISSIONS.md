# 02 · Rollen und Berechtigungen

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Glossar](./01_GLOSSARY.md)

Beschreibt die fachlichen Rollen, ihre Berechtigungen und die Datensichtbarkeit. Abgeleitet aus D-08/D-14/D-15/D-16/D-20/D-21/D-22/D-23/D-24/D-26/D-33/D-34/D-40 sowie Businessplan §29/§31. Es werden keine technischen Rollen-/Rechte-Implementierungen festgelegt.

## 1. Rollen

| Rolle | Beschreibung | Quelle |
|---|---|---|
| **Besucher/in (nicht angemeldet)** | Kann Events entdecken und Detailseiten ansehen, sieht bei Events nur die Teilnehmerzahl (keine Namen/Profile). Kann nicht buchen. | D-21; §16 |
| **Kontoinhaber/in** | Angemeldete Person mit Frello-Konto. Kann Profil pflegen und Events vormerken; zum Buchen ist die Telefonverifikation Voraussetzung. | D-20/D-26 |
| **Teilnehmende Person** | Kontoinhaber/in mit abgeschlossener Telefonverifikation, die gebucht hat/teilnimmt. Nach Check-in bewertungsberechtigt. | D-24/D-26 |
| **Buchende Person / Angehörige** | Kontoinhaber/in, die für eine andere teilnehmende Person bucht (Angehörigenmodus). Buchende und teilnehmende Person werden getrennt geführt. | D-15/D-20 |
| **Teilnehmende Person ohne eigenes Konto** | Nur im Angehörigenmodus: nimmt teil, ohne selbst ein Konto zu besitzen; Zustimmung/Identität über die buchende Person nachvollziehbar. | D-15/D-20 |
| **Anbieter (geprüft)** | Gewerbliche/institutionelle/gemeinnützige Organisation; legt Events als Entwurf an, verwaltet Buchungen/Warteliste/Check-in nach Freigabe. Keine privaten Gastgeber im MVP. | D-08; ADR-003 |
| **Frello-Kuration** | Prüft Anbieter und gibt jedes Event manuell frei (freigegeben/abgelehnt/zurückgegeben). Keine automatisierte/KI-Freigabe. | D-08/D-33; ADR-008 |
| **Frello-Support** | Rückrufservice in den Pilot-Supportzeiten; bearbeitet u. a. Buchungsübertragungen unter 24 h. | D-27/D-35/D-40 |
| **Frello-Moderation / Trust & Safety** | Bearbeitet Chat-Meldungen, Sicherheitsmeldungen und Sanktionen; priorisierter Eskalationsweg für dringende Sicherheitsfälle. | D-23/D-35; §29 |
| **Frello-Administration** | Übergeordneter Adminbereich (Prüfung, Support, Moderation, Rückerstattungen). Organisatorische Ausgestaltung/Team OFFEN. | §31 |

> Die interne Aufteilung zwischen Frello-Kuration, -Support, -Moderation und -Administration ist fachlich getrennt beschrieben; die konkrete organisatorische/personelle Ausgestaltung ist **OFFEN** (Businessplan §31) und wird hier nicht festgelegt.

## 2. Trennung buchende ↔ teilnehmende Person (D-15/D-20)

- Jede Buchung erfordert ein Frello-Konto der **buchenden** Person (keine Gastbuchung, GL-009).
- Im Angehörigenmodus benötigt die **teilnehmende** Person nicht zwingend ein eigenes Konto.
- Buchende und teilnehmende Person werden als getrennte Angaben geführt (siehe [`07_DATA_OBJECTS.md`](./07_DATA_OBJECTS.md), DO-004).
- Teilnahme-, Check-in- und Bewertungsberechtigung sind der **teilnehmenden** Person zugeordnet.
- Datenschutzrechtliche Ausgestaltung: **EXTERN ZU PRÜFEN** (siehe [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md), OP-010).

## 3. Berechtigungsmatrix (Kernaktionen)

Legende: ✓ = erlaubt · — = nicht vorgesehen · (V) = nur nach Telefonverifikation · (F) = nur nach Freigabe · (A) = nur im Angehörigenmodus

| Aktion | Besucher | Kontoinhaber | Teilnehmende Person | Angehörige (buchend) | Anbieter | Kuration | Support | Moderation |
|---|---|---|---|---|---|---|---|---|
| Events entdecken/filtern | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Eventdetails ansehen | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Konto anlegen | ✓ | — | — | — | — | — | — | — |
| Telefon verifizieren | — | ✓ | ✓ | ✓ | — | — | — | — |
| Für sich buchen | — | (V) | ✓ | ✓ | — | — | — | — |
| Für andere buchen | — | — | — | ✓ (A,V) | — | — | — | — |
| Auf Warteliste eintragen | — | (V) | ✓ | ✓ | — | — | — | — |
| Buchung stornieren (nach Modell) | — | — | ✓ | ✓ | — | — | ✓ | — |
| Buchung übertragen (≥24 h) | — | — | ✓ | ✓ | — | — | — | — |
| Buchung übertragen (<24 h) | — | — | — | — | — | — | ✓ | — |
| Event-Gruppenchat nutzen | — | — | ✓ | (A) | ✓ (eigenes Event) | — | — | ✓ |
| Melden/Blockieren | — | — | ✓ | ✓ | ✓ | — | — | ✓ |
| Event bewerten | — | — | ✓ (nach Check-in) | ✓ (A, teilnehmende Person) | — | — | — | — |
| Event als Entwurf anlegen | — | — | — | — | ✓ | — | — | — |
| Event freigeben/ablehnen/zurückgeben | — | — | — | — | — | ✓ | — | — |
| Buchungen/Warteliste des eigenen Events verwalten | — | — | — | — | ✓ (F) | — | ✓ | — |
| Check-in durchführen | — | — | — | — | ✓ (F) | — | ✓ | — |
| Rückerstattung auslösen | — | — | — | — | (nur Absage/Ausfall anstossen) | ✓ | ✓ | — |
| Sanktion/Buchungsbegrenzung setzen | — | — | — | — | — | — | — | ✓ |
| Anbieter verifizieren | — | — | — | — | — | ✓ | — | — |

> Anbieter können bei eigenen Events eine Absage/einen Ausfall auslösen (D-42/D-43); die eigentliche Rückerstattungsabwicklung liegt bei Frello (Kuration/Support/Administration). Der regulierte Zahlungs-/Erstattungsfluss ist **EXTERN ZU PRÜFEN** (OP-008/OP-009).

## 4. Sichtbarkeitsmatrix (Profil- und Teilnehmerdaten)

Legende: ✓ = sichtbar · — = nicht sichtbar · (int) = nur intern für Frello

| Datenelement | Besucher | Bestätigte/r Teilnehmende/r derselben Eventgruppe | Anbieter des Events | Frello (Kuration/Support/Moderation) |
|---|---|---|---|---|
| Teilnehmerzahl eines Events | ✓ | ✓ | ✓ | ✓ |
| Vorname/Anzeigename der Eventgruppe | — | ✓ | ✓ | ✓ |
| Freiwilliges Profilbild | — | ✓ (falls hinterlegt) | ✓ | ✓ |
| Generationsband (60+/70+/80+) | — | ✓ (falls freiwillig angezeigt) | ✓ | ✓ |
| Genaues Geburtsdatum | — | — | — | (int) |
| Telefonnummer (verifiziert) | — | — | — | (int) |
| E-Mail, Adresse, Zahlungsdaten | — | — | — | (int) |
| Öffentliche Anbieter-Gesamtnote (ab 5 Bewertungen) | ✓ | ✓ | ✓ | ✓ |
| Strukturierte Einzelkategorien (aggregiert) | ✓ (aggregiert) | ✓ | ✓ | ✓ |
| Internes Freitextfeedback | — | — | ✓ (anonymisiert) | (int) |
| Interne Zugänglichkeitsbewertung | — | — | ✓ (anonymisiert/intern) | (int) |
| Chat-Inhalte der Eventgruppe | — | ✓ (eigene Gruppe) | ✓ (eigenes Event) | (int, Moderation) |
| Notfallkontakt | — | — | (nur veranstaltungsbezogen, soweit beschlossen – Detail OFFEN) | (int) |

Regelbezug: D-21 (Sichtbarkeitsstufen), D-22 (Generationsband), D-26 (Telefonnummer nicht sichtbar), D-24/D-25/D-34 (Bewertungssichtbarkeit), D-23 (Chat). Details siehe [`05_BUSINESS_RULES.md`](./05_BUSINESS_RULES.md) (BR-023) und [`09_PRIVACY_SECURITY_AUDIT.md`](./09_PRIVACY_SECURITY_AUDIT.md).

## 5. Regeln für Anbieter- und Eventfreigabe

- Anbieter erhalten Schreib-/Verwaltungsrechte an Events **erst nach erfolgreicher Anbieterprüfung** (D-08).
- Jedes Event ist zunächst **Entwurf** und wird durch die Frello-Kuration **manuell** freigegeben, abgelehnt oder zur Überarbeitung zurückgegeben (D-33). Erst nach Freigabe ist es öffentlich buchbar.
- Fehlende/unklare Pflichtangaben (D-31) verhindern die Freigabe.

## 6. Sichtbare Platzhalter (extern zu prüfen / offen)

- **[EXTERN ZU PRÜFEN – D-15, OP-010]** Datenschutzrechtliche Ausgestaltung des Angehörigenzugriffs und der getrennten Führung buchend/teilnehmend.
- **[EXTERN ZU PRÜFEN – D-40, OP-011]** Einwilligung/Datenweitergabe bei Buchungsübertragung.
- **[EXTERN ZU PRÜFEN – D-34, OP-012]** Persönlichkeitsrecht bei anonymisierter Feedback-Einsicht der Anbieter.
- **[OFFEN – §31]** Konkrete organisatorische Zuordnung der internen Frello-Rollen (Team/Verantwortlichkeiten).
- **[OFFEN – §15]** Umfang/Zugriff des optionalen Notfallkontakts (veranstaltungsbezogen).
