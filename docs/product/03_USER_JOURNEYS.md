# 03 · User Journeys

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Funktionale Anforderungen](./04_FUNCTIONAL_REQUIREMENTS.md)

Fachliche Kernabläufe des MVP. Jede Journey: Akteur · Ablauf · beteiligte FR · Quelle. Journeys beschreiben Verhalten, keine Oberflächen-/Technikvorgaben.

---

**JRN-001 · Event entdecken und filtern** — VERBINDLICH
*Akteur:* alle. *Ablauf:* Suche öffnen → MVP-Pflichtfilter anwenden (Stadt/Region, Datum, Kategorie, Preis, kostenlos, Zugänglichkeit, Aktivitätsniveau, «Alleine willkommen», verfügbare Plätze) → Trefferliste → Eventdetail. Nicht angemeldete Besucher sehen nur die Teilnehmerzahl. *FR:* FR-001/FR-002/FR-003/FR-004. *Quelle:* D-32/D-21/D-31.

**JRN-002 · Konto anlegen und Telefonnummer verifizieren** — VERBINDLICH
*Akteur:* Besucher → Kontoinhaber. *Ablauf:* Konto anlegen → Telefonnummer verifizieren (verpflichtend vor erster Buchung) → Status `telefonverifiziert`. *FR:* FR-005/FR-006. *Quelle:* D-20/D-26.

**JRN-003 · Eigenes Event buchen** — VERBINDLICH
*Akteur:* Teilnehmende Person. *Ablauf:* Eventdetail → buchen (nur mit Konto + Verifikation) → Zahlung (online oder vor Ort, Vollzahlung) → Buchungsbestätigung → Erinnerung. Bei ausgebuchtem Event → Warteliste (JRN-007). *FR:* FR-009/FR-010/FR-011/FR-012/FR-044. *Quelle:* D-20/D-17/D-41.

**JRN-004 · Angehörigenbuchung** — VERBINDLICH
*Akteur:* buchende Person (Angehörige). *Ablauf:* Angebot finden → für teilnehmende Person buchen (getrennte Teilnehmeridentität, nachvollziehbare Zustimmung) → teilnehmende Person benötigt kein eigenes Konto → Erinnerungen. *FR:* FR-013. *Quelle:* D-15/D-20. *Hinweis:* Datenschutz **EXTERN ZU PRÜFEN** (OP-010).

**JRN-005 · Online-Zahlung** — TEILWEISE BESCHLOSSEN
*Akteur:* Teilnehmende/Angehörige. *Ablauf:* Buchung → Online-Vollzahlung → Buchung `bezahlt/bestätigt`. *FR:* FR-010/FR-012. *Quelle:* D-17/D-41. *Hinweis:* regulierter Zahlungsfluss **EXTERN ZU PRÜFEN** (OP-008).

**JRN-006 · Zahlung vor Ort** — TEILWEISE BESCHLOSSEN
*Akteur:* Teilnehmende/Angehörige. *Ablauf:* Buchung → Zahlungsart «vor Ort» → Buchung `bestätigt`; Zahlung erfolgt beim Anbieter. *FR:* FR-011. *Quelle:* D-17. *Hinweis:* Provisionsabrechnung Vor-Ort **EXTERN ZU PRÜFEN** (OP-008).

**JRN-007 · Warteliste und reguläres Nachrücken** — VERBINDLICH
*Akteur:* Teilnehmende Person. *Ablauf:* ausgebuchtes Event → Wartelisteneintrag (Eintragungsreihenfolge) → bei freiem Platz befristetes Nachrückangebot (12 h; bei <24 h 2 h) → Zusage → Buchung, sonst nächste Person. *FR:* FR-014/FR-015. *Quelle:* D-19.

**JRN-008 · Broadcast-Sonderfall unter zwei Stunden** — VERBINDLICH
*Akteur:* Teilnehmende Personen; System. *Ablauf:* Platz wird <2 h vor Beginn frei → gleichzeitiges Angebot an alle berechtigten Wartenden → erste vollständig bestätigte digitale Zusage erhält den Platz → übrige werden informiert; sagt niemand zu, bleibt der Platz frei; keine Vor-Ort-Vergabe an Unverifizierte. *FR:* FR-016. *Quelle:* D-44. *Hinweis:* regulärer Broadcast **OFFEN** (OP-002).

**JRN-009 · Buchungsübertragung** — TEILWEISE BESCHLOSSEN
*Akteur:* Teilnehmende Person; Support. *Ablauf:* bis 24 h vor Beginn selbstständig an Person mit Konto + Telefonverifikation übertragen; darunter nur über Support; Platzanzahl unverändert; Rechte wandern; protokolliert. *FR:* FR-023. *Quelle:* D-40. *Hinweis:* Guardrails **OFFEN** (OP-003); revDSG **EXTERN ZU PRÜFEN** (OP-011).

**JRN-010 · Event-Gruppenchat** — VERBINDLICH
*Akteur:* bestätigte Teilnehmende; Anbieter; Moderation. *Ablauf:* nach Buchung Zugang zum moderierten Gruppenchat → Anreise-/Ankündigungsnachrichten → Melden/Blockieren möglich → Chat schliesst nach dem Event. Keine 1:1-Nachrichten. *FR:* FR-025/FR-026. *Quelle:* D-23.

**JRN-011 · Check-in** — VERBINDLICH
*Akteur:* Anbieter. *Ablauf:* vor Ort Teilnahme bestätigen (Check-in) → Status `teilgenommen` → Bewertungsberechtigung entsteht. *FR:* FR-027/FR-037. *Quelle:* D-19/D-24.

**JRN-012 · Bewertung abgeben** — VERBINDLICH
*Akteur:* teilnehmende Person (nach Check-in). *Ablauf:* fünf öffentliche Kategorien bewerten + interne Zugänglichkeit + optionales internes Freitextfeedback → Aggregation → öffentliche Note ab fünf Bewertungen. *FR:* FR-028/FR-029/FR-030/FR-031. *Quelle:* D-24/D-34/D-25.

**JRN-013 · Anbieterregistrierung und -prüfung** — VERBINDLICH
*Akteur:* Anbieter; Kuration. *Ablauf:* Registrierung → Verifikation (u. a. Register-/Identitätsabgleich; Qualifikationsnachweis bei sensiblen Angeboten) → verifiziert/abgelehnt. Keine Privaten. *FR:* FR-032/FR-033. *Quelle:* D-08. *Hinweis:* Prüfmassnahmen teils **EXTERN ZU PRÜFEN**.

**JRN-014 · Event erstellen und manuell freigeben lassen** — VERBINDLICH
*Akteur:* geprüfter Anbieter; Kuration. *Ablauf:* Event als Entwurf mit Pflichtfeldern (D-31) anlegen → zur Prüfung einreichen → manuelle Freigabe (freigegeben / abgelehnt / zurückgegeben) → nach Freigabe veröffentlicht/buchbar. Fehlende Pflichtangaben blockieren die Veröffentlichung. *FR:* FR-034/FR-035. *Quelle:* D-31/D-33.

**JRN-015 · Anbieterabsage und Leistungsausfall** — TEILWEISE BESCHLOSSEN
*Akteur:* Anbieter; Frello. *Ablauf:* Absage (inkl. Wetter/kurzfristig) oder Ausfall zentraler Leistung → volle Rückerstattung als Standard + Wahlrecht; bei Ausfall zusätzlich aktive Information + Audit-Dokumentation. *FR:* FR-020/FR-021. *Quelle:* D-42/D-43. *Hinweis:* Erstattungsrecht **EXTERN ZU PRÜFEN** (OP-009).

**JRN-016 · Rückerstattung oder Umbuchung** — TEILWEISE BESCHLOSSEN
*Akteur:* Teilnehmende Person; Frello. *Ablauf:* nach Absage/Ausfall/Storno → Wahl zwischen voller Rückerstattung und angebotener Umbuchung (keine Pflicht) → Rückerstattungsvorgang. *FR:* FR-018/FR-022. *Quelle:* D-18/D-42/D-43. *Hinweis:* Zahlungs-/Erstattungsfluss **EXTERN ZU PRÜFEN** (OP-008/OP-009).

**JRN-017 · Support-Rückruf** — PILOTPARAMETER
*Akteur:* Person mit Anliegen; Support. *Ablauf:* Rückruf anfragen → Bearbeitung Mo–Fr 09–17, Rückruf < 1 Werktag; ausserhalb asynchron; dringende Sicherheit priorisiert. *FR:* FR-039. *Quelle:* D-27/D-35. *Hinweis:* dauerhafte Zeiten **OFFEN** (OP-005).

**JRN-018 · Meldung, Moderation und Sicherheitseskalation** — VERBINDLICH
*Akteur:* meldende Person; Moderation. *Ablauf:* Meldung/Blockierung → menschliche Prüfung → Massnahme oder Verwerfen → dringende Sicherheitsmeldungen priorisiert → nachvollziehbare Sanktion mit Einsprachemöglichkeit. *FR:* FR-026/FR-040. *Quelle:* D-23/D-35/§29.
