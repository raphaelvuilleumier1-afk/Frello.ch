# 13 · Offene Punkte und Prüfpflichten

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md)

Vollständige, klassifizierte Liste offener Gründer-Unterentscheide, externer Prüfpflichten, Pilotparameter, zu validierender Hypothesen, zurückgestellter Funktionen, Nicht-Ziele und ausstehender organisatorischer Nachweise. Jeder Punkt: Klassifikation · betroffene `D-ID`/`ADR`/`A-ID` · konkrete offene Frage/Prüfpflicht · Auswirkung auf die Spezifikation · Status. **Kein** Punkt ist «erledigt».

## A · Offene Gründer-Unterentscheide

| OP | Klasse | Bezug | Offene Frage | Auswirkung | Status |
|---|---|---|---|---|---|
| OP-001 | OFFEN | D-37; ADR-002 | Soll es eine Soft-Launch-Vorschau für früher bereite Städte geben? | Kein Vorschaubetrieb spezifiziert; nur gemeinsamer Start (BR-028). | nicht beschlossen |
| OP-002 | OFFEN | D-44; ADR-004 | Wird ein Broadcast auch für reguläre (nicht <2 h) Wartelistensituationen eingesetzt? | Nur <2-h-Sonderfall spezifiziert (BR-009/FR-016). | nicht beschlossen |
| OP-003 | OFFEN | D-40; ADR-004 | Konkrete Anzeige-/Bestätigungsschritte, Check-in-Guardrails, Missbrauchs-/Häufigkeitsgrenzen der Buchungsübertragung. | FR-023/BR-017 nur im Grundsatz; Guardrails offen. | offen |
| OP-004 | OFFEN | D-34; ADR-006 | Genauer Einspracheprozess, Moderationsregeln, interne Alters-/Zeitraum-/Trenddarstellung der Bewertungen. | ST-010/FR-031 ohne Detailprozess. | offen |
| OP-005 | OFFEN | D-27; ADR-005 | Dauerhafte Supportzeiten über den Pilot hinaus. | BR-026/NFR-007 nur als Pilotparameter. | offen (nach Pilot) |
| OP-006 | OFFEN (technisch) | D-45/D-46/D-28; ADR-007 | Konkreter Native-App-Startentscheid sowie Plattformreihenfolge/Framework. | NFR-004 fixiert nur PWA-MVP; native App nicht Teil des Launch. | offen; separate Gründerfreigabe nötig |
| OP-025 | OFFEN | A-08/A-11 | Anteil kostenpflichtiger Events und Ø Auslastung (Szenariovariablen). | Keine Zielwerte in der Spezifikation. | offen |

## B · Externe Prüfpflichten

| OP | Klasse | Bezug | Prüfpflicht | Auswirkung | Status |
|---|---|---|---|---|---|
| OP-007 | EXTERN ZU PRÜFEN | D-14/D-16; ADR-003 | Betreiber- und Vermittlerrolle, Haftung, Vertragspartnerschaft. | BR-031/BR-032 unter Vorbehalt. | Bestätigung ausstehend |
| OP-008 | EXTERN ZU PRÜFEN | D-17; ADR-004 | Zahlungsfluss, Kundengelder/FINMA, MWST, Provisionsabrechnung Vor-Ort. | BR-013/FR-010/FR-011/DO-010 nur fachlich. | Bestätigung ausstehend |
| OP-009 | EXTERN ZU PRÜFEN | D-18/D-42/D-43; ADR-004 | Storno-, Absage- und Erstattungsrecht, Konsumentenschutz, höhere Gewalt. | BR-010/BR-018/BR-019 kein Klauseltext. | Bestätigung ausstehend |
| OP-010 | EXTERN ZU PRÜFEN | D-15; ADR-005 | Datenschutz der Angehörigenbuchung (getrennte Führung, Zustimmung). | BR-025/PR-006 unter Vorbehalt. | Bestätigung ausstehend |
| OP-011 | EXTERN ZU PRÜFEN | D-40; ADR-004 | revDSG/Einwilligung bei Übertragung personenbezogener Buchungsdaten. | BR-017/PR-007 unter Vorbehalt. | Bestätigung ausstehend |
| OP-012 | EXTERN ZU PRÜFEN | D-34; ADR-006 | Persönlichkeitsrecht/Datenschutz bei anonymisierter Feedback-Einsicht und Einsprache. | BR-022/PR-010 unter Vorbehalt. | Bestätigung ausstehend |
| OP-013 | EXTERN ZU PRÜFEN | D-07; ADR-002 | Diskriminierungsrechtliche Zulässigkeit eventbezogener Altersfokusse. | BR-030 unter Vorbehalt. | Bestätigung ausstehend |
| OP-014 | AUSSTEHENDE UMSETZUNG / EXTERN ZU PRÜFEN | D-01/D-02/D-03/D-05/D-06; ADR-001; Q-26/Q-27/Q-28 | Marken-, Domain-, Firmen-, App-Store- und Social-Handle-Prüfungen. | **Keine** Verfügbarkeit wird behauptet; kein Produktverhalten hängt davon ab. | ohne Ergebnis; nicht als erledigt darstellen |
| OP-033 | EXTERN ZU PRÜFEN | §30 | Reiseveranstalter-/Pauschalreiserecht, Versicherung, weitere Compliance. | Betrifft bestimmte Angebotsarten (DO-007); fachlich nur als Prüfpflicht. | Bestätigung ausstehend |

## C · Pilotparameter und zu validierende Hypothesen

| OP | Klasse | Bezug | Gegenstand | Auswirkung | Status |
|---|---|---|---|---|---|
| OP-015 | ZU VALIDIEREN | D-11; A-09/A-10/A-13 | Provisionssätze 8 %/15 % im Pilot bestätigen. | BR-033 als Pilotgrundlage. | in Validierung |
| OP-016 | PILOTPARAMETER / ZU VALIDIEREN | D-36; A-03 | Eignung der Pilotdauer 16 Wochen. | BR-029 gesetzt, Wirksamkeit offen. | zu validieren |
| OP-017 | ZU VALIDIEREN | D-29; A-04/A-05/A-27 | Realisierbarkeit und Ausreichen der Dichteschwelle 5/10 je Stadt. | BR-027 Voraussetzung des Starts. | zu validieren |
| OP-018 | ZU VALIDIEREN | A-26 (D-29/D-33/D-36/D-37) | Operative Leistbarkeit des Vier-Städte-Parallelbetriebs. | Betrifft Betrieb/Kuration (FR-035/FR-038). | zu validieren |
| OP-019 | ZU VALIDIEREN | D-46; A-28 | Native App wesentlich einfacher als PWA für die Zielgruppe. | Beeinflusst späteren App-Startentscheid (OP-006). | zu validieren |
| OP-020 | ZU VALIDIEREN | D-44; A-29 | Wirksamkeit des <2-h-Broadcasts. | Betrifft BR-009/FR-016. | zu validieren |
| OP-021 | ZU VALIDIEREN | D-15; A-16 | Wirkung des Angehörigenmodus. | Betrifft FR-013. | zu validieren |
| OP-022 | ZU VALIDIEREN | D-23; A-18 | Nutzen des Event-Gruppenchats. | Betrifft FR-025. | zu validieren |
| OP-023 | ZU VALIDIEREN | D-24; A-19 | Bewertungsbereitschaft der Teilnehmenden. | Betrifft FR-028/FR-029. | zu validieren |
| OP-024 | ZU VALIDIEREN | A-12 | North-Star: erneute reale Buchung und Besuch innerhalb 60 Tagen. | Erfolgsmessung, kein MVP-Verhalten. | zu validieren |

## D · Zurückgestellte Funktionen, Nicht-Ziele, nicht anwendbar

| OP | Klasse | Bezug | Gegenstand | Auswirkung | Status |
|---|---|---|---|---|---|
| OP-026 | ZURÜCKGESTELLT | D-13/D-39; ADR-003 | Externe Buchungen und Lead-/B2B-Modell. | Im MVP ausgeschlossen (BR-015/FR-043). | frühestens nach Pilot |
| OP-027 | ZURÜCKGESTELLT | D-12/D-38; ADR-003 | Kostenpflichtige Promotion. | Im MVP ausgeschlossen (BR-016/FR-042). | frühestens nach Pilot |
| OP-028 | ZURÜCKGESTELLT | D-41; ADR-004 | Teil-/Ratenzahlungsmodell. | Im MVP ausgeschlossen (BR-014/FR-012). | frühestens nach Pilot |
| OP-029 | ZURÜCKGESTELLT | D-30/D-03; ADR-007/ADR-001 | Operative Deutschland-Expansion (Kriterien beschlossen). | Nicht Teil des Schweizer MVP. | wartet auf Kriterienerfüllung |
| OP-030 | NICHT ANWENDBAR | D-04; ADR-003 | Separate Frello-Gesellschaft. | Für den MVP nicht anwendbar (BR-032). | Reaktivierung nur bei geplanter eigener Gesellschaft |
| OP-031 | NICHT TEIL DES MVP | D-45/D-46; ADR-007 | Native Fast-Follow-App als Launch-Bestandteil. | PWA ist MVP-Launch; native App separat freizugeben. | vorgemerkt, nicht freigegeben |
| OP-032 | ZURÜCKGESTELLT | D-32; ADR-008 | Spätere Filter (Sprache, ÖV, Verpflegung, Altersfokus). | Nicht im MVP-Filterset (BR-006). | Ausbaupunkt |

## Referenzierte Annahmen (bestehende A-IDs, nicht neu nummeriert)

A-03 (OP-016), A-04/A-05 (OP-017), A-08/A-11 (OP-025), A-09/A-10/A-13 (OP-015), A-12 (OP-024), A-16 (OP-021), A-18 (OP-022), A-19 (OP-023), A-26 (OP-018), A-27 (OP-017), A-28 (OP-019), A-29 (OP-020). Vollständige Definitionen im [Annahmenregister](../business/03_ASSUMPTION_REGISTER.md).

> **Hinweis:** Diese Spezifikation schliesst keinen dieser Punkte durch Vermutung. Externe Prüfungen sind **nicht** durchgeführt; es wird keine rechtliche, marken-, domain- oder app-store-bezogene Verfügbarkeit behauptet.
