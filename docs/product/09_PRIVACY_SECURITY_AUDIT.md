# 09 · Privacy, Sicherheit und Audit

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Rollen](./02_ROLES_PERMISSIONS.md) · [Datenobjekte](./07_DATA_OBJECTS.md)

Fachliche Privacy- (`PR-xxx` = **Privacy Requirement**), Sicherheits- und Audit-Anforderungen. **Keine** Rechtsberatung, **keine** erfundenen Aufbewahrungsfristen oder Rechtsfolgen. Alle rechtlich zu bestätigenden Punkte sind **EXTERN ZU PRÜFEN** (revDSG seit 01.09.2023 in Kraft, Q-20). Es wird **keine** konkrete Verschlüsselungs-/Technikimplementierung festgelegt.

| ID | Anforderung | Klasse | Beschreibung | Quelle |
|---|---|---|---|---|
| PR-001 | Privacy by Design und Default | VERBINDLICH | Datenschutzfreundliche Grundeinstellungen; minimale öffentliche Daten; datensparsame Erhebung. | §30; ADR-005 |
| PR-002 | Datensparsamkeit | VERBINDLICH | Nur für den jeweiligen Zweck notwendige Daten werden erhoben/angezeigt. | §30 |
| PR-003 | Öffentliche vs. nicht öffentliche Profildaten | VERBINDLICH | Öffentlich nur Vorname/Anzeigename, Region, Interessen, Sprachen, Aktivitätsniveau, freiwilliges Foto/Generationsband. Nicht öffentlich: genaues Geburtsdatum, Adresse, Telefonnummer, E-Mail, Zahlungsdaten, Notfallkontakt, Gesundheits-/Mobilitätsdiagnosen. | D-21/D-22; §15/§30 |
| PR-004 | Telefonnummer nicht öffentlich | VERBINDLICH | Verifizierte Telefonnummer dient dem Vertrauen, ist aber für andere Mitglieder nicht sichtbar. | D-26; ADR-005 |
| PR-005 | Generationsband statt Geburtsdatum | VERBINDLICH | Öffentlich höchstens ein freiwilliges breites Generationsband (60+/70+/80+); genaues Geburtsdatum bleibt privat. | D-22; ADR-005 |
| PR-006 | Angehörigenbuchung – Einwilligung | TEILWEISE BESCHLOSSEN | Zustimmung und Teilnehmeridentität müssen nachvollziehbar sein; buchende und teilnehmende Person getrennt. Datenschutzrechtliche Ausgestaltung **EXTERN ZU PRÜFEN**. | D-15; ADR-005 |
| PR-007 | Buchungsübertragung – Einwilligung | TEILWEISE BESCHLOSSEN | Übertragung personenbezogener Buchungsdaten wird protokolliert; revDSG/Einwilligung **EXTERN ZU PRÜFEN**. | D-40; ADR-004 |
| PR-008 | Sichtbarkeit von Teilnehmerlisten | VERBINDLICH | Nicht angemeldete Personen sehen nur die Teilnehmerzahl; bestätigte Teilnehmende sehen Vornamen/freiwillige Bilder ihrer Eventgruppe. | D-21; ADR-005 |
| PR-009 | Gruppenchat und Moderation | VERBINDLICH | Nur moderierter Event-Gruppenchat für bestätigte Teilnehmende; keine 1:1-Kanäle; Telefonnummern verborgen; Melden/Blockieren; Moderationsprotokoll. | D-23; §29 |
| PR-010 | Bewertung und internes Feedback | VERBINDLICH | Freitextfeedback bleibt intern; Anbietereinsicht nur anonymisiert; öffentlich nur aggregierte strukturierte Resultate. Persönlichkeitsrecht **EXTERN ZU PRÜFEN**. | D-25/D-34; ADR-006 |
| PR-011 | Audit relevanter Vorgänge | VERBINDLICH | Nachvollziehbare Protokollierung von Anbieterprüfung, Eventfreigabe, Buchungsübertragung, Ausfall/Absage, Rückerstattung, Sanktion und Einsprache. | D-33/D-40/D-43 |
| PR-012 | Melde- und Eskalationsweg | VERBINDLICH | Dringende Sicherheitsmeldungen erhalten einen priorisierten Melde-/Eskalationsweg; menschliche Moderation; nachvollziehbare Sanktionen. | D-35; §29 |
| PR-013 | Aufbewahrung und Löschung | TEILWEISE BESCHLOSSEN | Lösch-/Auskunfts-/Exportprozesse und definierte Aufbewahrung sind fachlich vorzusehen. **Konkrete Fristen/Rechtsfolgen werden nicht erfunden; EXTERN ZU PRÜFEN.** | §30 |
| PR-014 | Externe Datenschutz-/Rechtsprüfpflichten | EXTERN ZU PRÜFEN | Sämtliche revDSG-, Persönlichkeits-, Konsumentenschutz- und Zahlungsrechtsfragen sind vor Umsetzung durch qualifizierte Fachpersonen zu prüfen. | §30; ADR-004/005/006 |

## Sicherheitsgrundsätze (fachlich)

- Vertrauen ist Bestandteil des Kernprodukts (§29): geprüfte Anbieter, Telefonverifikation, moderierter Chat, Melden/Blockieren, menschliche Moderation, Betrugswarnungen, Verbot privater Geldforderungen im Chat.
- Keine automatisierte oder KI-basierte Moderation im MVP (D-23/D-33).
- Sicherheitsmeldungen werden unabhängig von Sternebewertungen geprüft; keine automatische Entfernung aufgrund einer einzelnen Kennzahl (§17/§29).

## Auditierbarkeit

Die in PR-011 genannten Vorgänge sind über das Auditprotokoll (DO-024) nachvollziehbar. Ziel ist die Nachvollziehbarkeit fachlicher Entscheidungen (wer hat was wann veranlasst), ohne technische Log-/Speicherimplementierung festzulegen.

## Sichtbare Platzhalter

- **[EXTERN ZU PRÜFEN]** PR-006 (OP-010), PR-007 (OP-011), PR-010 (OP-012), PR-013/PR-014 (revDSG, Konsumentenschutz, Zahlungsrecht – OP-007/OP-008/OP-009).
- **[OFFEN]** Zugriff/Umfang optionaler Notfallkontakt (§15).
