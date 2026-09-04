# 08 · Ausnahmen und Eskalationen

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Zustände](./06_STATE_MODELS.md) · [Geschäftsregeln](./05_BUSINESS_RULES.md)

Fachliche Ausnahme-, Fehler- und Eskalationsfälle. Je Fall: Auslöser · fachliche Behandlung · Quelle · Bezüge. Rechtlich/regulatorisch ungeklärte Details sind als **EXTERN ZU PRÜFEN** markiert.

| ID | Fall | Auslöser | Fachliche Behandlung | Quelle | Bezüge |
|---|---|---|---|---|---|
| EXC-001 | Mindestzahl nicht erreicht | Mindestteilnehmerzahl bis Durchführungsentscheid (≤48 h) nicht erreicht | Anbieter sagt ab **oder** führt trotzdem durch; bei Absage Rückerstattung nach Regeln | D-19; ADR-004 | BR-011, ST-002, FR-019 |
| EXC-002 | Höchstzahl erreicht | Höchstteilnehmerzahl erreicht | Warteliste öffnet in Eintragungsreihenfolge | D-19; ADR-004 | BR-007/BR-008, ST-004, FR-014 |
| EXC-003 | Reguläres Nachrückangebot nicht angenommen | Frist (12 h; bei <24 h 2 h) läuft ab | Angebot verfällt; nächste berechtigte Person rückt nach | D-19; ADR-004 | BR-008, ST-005, FR-015 |
| EXC-004 | Platzfreigabe unter zwei Stunden | Platz wird <2 h vor Beginn frei | Broadcast an alle berechtigten Wartenden; erste vollständig bestätigte digitale Zusage gewinnt; sonst bleibt Platz frei; keine Vor-Ort-Vergabe an Unverifizierte (D-20/D-26 gelten) | D-44; ADR-004 | BR-009, ST-004/ST-005, FR-016, OP-002 |
| EXC-005 | Fehlgeschlagene/unvollständige Zahlung | Zahlung schlägt fehl oder wird nicht abgeschlossen | Buchung wird nicht bestätigt; Platz bleibt nicht reserviert; Wiederholung möglich. **Technischer/rechtlicher Zahlungsprozess EXTERN ZU PRÜFEN** | D-17/D-41; ADR-004 | ST-003, DO-010, FR-009/FR-010, OP-008 |
| EXC-006 | Anbieterabsage | Anbieter sagt Event ab | Volle Rückerstattung als Standard + Wahlrecht; optional Ersatztermin/Umbuchung. **Rechtliche Formulierung EXTERN ZU PRÜFEN** | D-42; ADR-004 | BR-018, ST-002/ST-009, FR-020, OP-009 |
| EXC-007 | Wetterbedingte Absage | Wetterbedingte/kurzfristige Absage durch Anbieter | Fachlich wie EXC-006 (volle Rückerstattung Standard, Wahlrecht). Abgrenzung höherer Gewalt **EXTERN ZU PRÜFEN** | D-42; ADR-004 | BR-018, FR-020, OP-009 |
| EXC-008 | Ausfall einer zentralen Leistung | Anbieter-/Leistungsausfall | Wie EXC-006 + aktive Information der Betroffenen über verfügbare Kanäle + Audit-Dokumentation; wiederholte Ausfälle als internes Qualitätssignal | D-43; ADR-004 | BR-019, ST-002, FR-021, PR-011, OP-009 |
| EXC-009 | Buchungsübertragung unter 24 Stunden | Übertragung < 24 h vor Beginn gewünscht | Nur über den Frello-Support; Empfänger benötigt Konto + Telefonverifikation; Vorgang protokolliert | D-40; ADR-004 | BR-017, ST-003, DO-013, FR-023, OP-003 |
| EXC-010 | Wiederholter No-show | Wiederholtes Nichterscheinen ohne Absage | Zeitweise Buchungsbegrenzung mit Einsprachemöglichkeit; keine automatische Geldstrafe | D-19; ADR-004 | BR-012, ST-006, FR-024 |
| EXC-011 | Missbrauchsverdacht | Auffälliges/missbräuchliches Verhalten (z. B. Betrugsmuster) | Menschliche Prüfung; ggf. Sanktion/Sperre mit Einsprache; nachvollziehbare Dokumentation | §29; D-35 | BR-012, ST-010, DO-022, FR-040 |
| EXC-012 | Belästigung oder Sicherheitsmeldung | Meldung von Belästigung/Betrug/Sicherheitsrisiko | Priorisierter Melde- und Eskalationsweg; menschliche Moderation; Schutzmassnahmen | D-35; §29 | BR-024, ST-010, DO-021/DO-022, FR-026/FR-040, PR-012 |
| EXC-013 | Unvollständiger Evententwurf | Pflichtangaben fehlen/unklar bei Einreichung | Keine Veröffentlichung; Rückgabe «zur Überarbeitung» | D-31/D-33; ADR-008 | BR-004/BR-005, ST-002, FR-034/FR-035 |
| EXC-014 | Abgelehnte Anbieter- oder Eventprüfung | Verifikation/Freigabe negativ | Anbieter/Event wird nicht zugelassen bzw. abgelehnt; nachvollziehbarer Prüfvermerk | D-08/D-33; ADR-003/ADR-008 | BR-001/BR-004, ST-001/ST-002, FR-032/FR-035 |
| EXC-015 | Rückerstattungsproblem | Rückerstattung nicht/verzögert durchführbar; Chargeback | Fachliche Nachverfolgung; Audit; Lösung über Frello. **Regulierter Prozess/Payment EXTERN ZU PRÜFEN** | D-18/D-42/D-43; ADR-004 | BR-010/BR-018/BR-019, ST-009, FR-018/FR-022, OP-008/OP-009 |
| EXC-016 | Datenschutzanfrage | Auskunfts-/Lösch-/Exportbegehren | Fachliche Bearbeitung nach Datenschutzgrundsätzen (Privacy by Design/Default). **Konkrete Fristen/Rechtsfolgen EXTERN ZU PRÜFEN – nicht erfinden** | §30; ADR-005 | PR-001/PR-013/PR-014, DO-024, OP-010/OP-011 |

## Sichtbare Platzhalter

- **[EXTERN ZU PRÜFEN]** EXC-005/EXC-015 (Zahlung/Rückerstattung, OP-008/OP-009), EXC-006/EXC-007/EXC-008 (Absage-/Ausfallrecht, OP-009), EXC-016 (Datenschutz, OP-010/OP-011/OP-012).
- **[OFFEN]** EXC-004 (regulärer Broadcast, OP-002), EXC-009 (Übertragungs-Guardrails, OP-003).
