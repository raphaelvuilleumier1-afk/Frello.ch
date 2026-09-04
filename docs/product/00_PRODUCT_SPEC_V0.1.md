# Produktspezifikation Frello – V0.1 (MVP)

**Stand:** 3. September 2026 · **Status:** Entwurf zur Gründerprüfung – **nicht freigegeben**, bewusst uncommitted · **Grundlage:** Businessplan V0.3, Register (D-01…D-46, A-01…A-29, Q-01…Q-28), ADR-001…ADR-008

**Zugehörige Dokumente:** [README](./README.md) · [Glossar](./01_GLOSSARY.md) · [Rollen](./02_ROLES_PERMISSIONS.md) · [Journeys](./03_USER_JOURNEYS.md) · [Funktionale Anforderungen](./04_FUNCTIONAL_REQUIREMENTS.md) · [Geschäftsregeln](./05_BUSINESS_RULES.md) · [Zustände](./06_STATE_MODELS.md) · [Datenobjekte](./07_DATA_OBJECTS.md) · [Ausnahmen](./08_EXCEPTIONS_ESCALATIONS.md) · [Privacy/Sicherheit/Audit](./09_PRIVACY_SECURITY_AUDIT.md) · [Nichtfunktionale Anforderungen](./10_NON_FUNCTIONAL_REQUIREMENTS.md) · [Akzeptanzkriterien](./11_ACCEPTANCE_CRITERIA.md) · [Traceability](./12_TRACEABILITY_MATRIX.md) · [Offene Punkte](./13_OPEN_POINTS.md)

> **Dieses Dokument ist das Dachdokument.** Es fasst den Inhalt der Module zusammen und trifft **keine** neuen Gründer-, Rechts-, Architektur- oder Technologieentscheidungen. Source of Truth für das «Warum/Was entschieden wurde» bleibt [`docs/business/`](../business/README.md).

## 1. Produktziel

Frello ist eine geplante Schweizer **Erlebnis- und Begegnungsplattform**, über die Menschen gemeinsame Freizeitaktivitäten **entdecken, verbindlich buchen und zusammen besuchen**. Der MVP setzt kuratierte, vertrauenswürdige Kleingruppen-Erlebnisse mit geprüften Anbietern, verbindlicher Buchung, Warteliste, moderiertem Event-Gruppenchat, strukturierten Bewertungen und menschlichem Support in den Mittelpunkt – Fokus auf **reale, wiederkehrende Teilnahme statt Bildschirmzeit** (Businessplan §2/§7/§12; D-07/D-08/D-16).

## 2. Zielgruppe

Primär **Menschen ab 65 Jahren, offen für alle Erwachsenen** (D-07, BR-030). Wichtige indirekte Nutzergruppe sind **Angehörige** (Angehörigenbuchung, D-15). Anbieter sind im MVP ausschliesslich **geprüfte gewerbliche, institutionelle oder gemeinnützige** Organisationen (D-08).

## 3. Verbindlicher MVP-Scope

Installierbare **Web/PWA** (D-46) · regionale Eventsuche mit **MVP-Pflichtfiltern** (D-32) · **geprüfte Anbieter**, keine Privaten (D-08) · **Event-Pflichtfeldsatz** (D-31) · **manuelle Freigabe jedes Events** (D-33) · **interne, verbindliche Buchung** (D-20/D-39) · **Telefonverifikation vor erster Buchung** (D-26) · **Online- und Vor-Ort-Zahlung**, **Vollzahlung ohne Teilzahlung** (D-17/D-41) · **Angehörigenbuchung** (D-15) · **Warteliste** mit regulärem Nachrücken und **<2-h-Broadcast** (D-19/D-44) · **drei Stornomodelle**, Durchführungsentscheid, No-show-Regeln (D-18/D-19) · **Buchungsübertragung** (D-40) · **Anbieterabsage/Leistungsausfall** mit voller Rückerstattung und Wahlrecht (D-42/D-43) · **Steckbrief** und Sichtbarkeitsregeln (D-21/D-22) · **moderierter Event-Gruppenchat** ohne 1:1 (D-23) · **strukturierte Bewertungen** (D-24/D-25/D-34) · **Check-in** (D-19/D-24) · **Anbieter- und Adminbereich**, **Support-Rückrufservice Mo–Fr 09–17** (D-27/D-35) · **kostenlose Inserate** geprüfter Anbieter, **keine kostenpflichtige Promotion** (D-12/D-38) · Zugänglichkeitsangaben und Benachrichtigungen (§16). Details: [`04_FUNCTIONAL_REQUIREMENTS.md`](./04_FUNCTIONAL_REQUIREMENTS.md), [`05_BUSINESS_RULES.md`](./05_BUSINESS_RULES.md).

## 4. Explizite Nicht-Ziele

Externe Buchungen und Lead-/B2B-Modell (D-13/D-39) · kostenpflichtige Promotion (D-38) · Teil-/Ratenzahlungen (D-41) · offener 1:1-Chat (D-23) · private Gastgeber (D-08) · öffentliche Teilnehmerbewertung und öffentliche Anbieterantwort (D-24/D-34) · Social Feed/Popularitätsmechaniken (§15) · automatisierte oder KI-basierte Moderation/Freigabe (D-23/D-33) · **native App als Launch-Bestandteil** (Fast-Follow, separat freizugeben; D-45/D-46) · Deutschland-Expansion (D-30/D-03) · separate Frello-Gesellschaft (D-04) · spätere Filter Sprache/ÖV/Verpflegung/Altersfokus (D-32) · Mehrsprachigkeit im Pilot (D-09/D-10). Siehe [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md).

## 5. Produktprinzipien

- **Vertrauen ist Kernprodukt, kein Zusatzfeature** (§29): geprüfte Anbieter, Telefonverifikation, moderierter Chat, menschliche Moderation.
- **Verbindlichkeit ohne Risiko:** Mindest-/Höchstzahl, Warteliste, klare Storno-/Rückerstattungsregeln.
- **Zugänglichkeit und Verständlichkeit** für die Zielgruppe 65+ (NFR-001/NFR-002).
- **Datensparsamkeit und Privacy by Design/Default** (PR-001/PR-002).
- **Keine Parallelwahrheit:** Diese Spezifikation leitet nur ab; Entscheide bleiben in `docs/business/`.
- **Reale Teilnahme statt Bildschirmzeit** als North-Star-Richtung (A-12, zu validieren).

## 6. Pilotumfang

Paralleler Pilot in **Zürich, Basel, Bern, Luzern**; je Stadt **≥5 geprüfte Anbieter und ≥10 kommende Termine** (Dichteschwelle, D-29). **Gemeinsamer offizieller Start** aller vier Städte erst, wenn alle die Schwelle erfüllen (D-37); danach **16-wöchige** gemeinsame Pilotmessung (D-36). Produktsprache **Deutsch** (D-09/D-10). Eine Soft-Launch-Vorschau ist **OFFEN** (OP-001). Realisierbarkeit/Wirksamkeit sind **ZU VALIDIEREN** (A-03/A-04/A-05/A-26/A-27).

## 7. Abgrenzung Web/PWA und native Fast-Follow-App

Der MVP startet als responsive Webplattform bzw. **installierbare PWA** (verbindliches MVP-Launch-Ziel, D-46/NFR-004); der öffentliche Pilotstart hängt **nicht** von einer nativen App ab. Eine **native App** wird als **Fast-Follow** früh/parallel vorbereitet, ist aber **nicht Teil des MVP-Launch** und benötigt eine **separate ausdrückliche Gründerfreigabe** (Gesamtbewertung, D-45). Plattformreihenfolge/Framework sind **technisch und offen** (OP-006). Die App-Store-Namensprüfung ist organisatorisch anstehend, ohne behauptetes Ergebnis (D-05, OP-014).

## 8. Zusammenfassung der Rollen

Besucher · Kontoinhaber · Teilnehmende Person · buchende Person/Angehörige · teilnehmende Person ohne eigenes Konto (Angehörigenmodus) · geprüfter Anbieter · Frello-Kuration · Frello-Support · Frello-Moderation/Trust & Safety · Frello-Administration. Berechtigungs- und Sichtbarkeitsmatrix: [`02_ROLES_PERMISSIONS.md`](./02_ROLES_PERMISSIONS.md).

## 9. Zusammenfassung der Kernabläufe

Entdecken/Filtern (JRN-001) · Konto + Verifikation (JRN-002) · Buchung/Zahlung (JRN-003/005/006) · Angehörigenbuchung (JRN-004) · Warteliste/Nachrücken/Broadcast (JRN-007/008) · Buchungsübertragung (JRN-009) · Gruppenchat (JRN-010) · Check-in (JRN-011) · Bewertung (JRN-012) · Anbieterprüfung und Eventfreigabe (JRN-013/014) · Absage/Ausfall und Rückerstattung/Umbuchung (JRN-015/016) · Support-Rückruf (JRN-017) · Moderation/Eskalation (JRN-018). Details: [`03_USER_JOURNEYS.md`](./03_USER_JOURNEYS.md).

## 10. Übersicht aller Module

| Modul | Inhalt | ID-Raum |
|---|---|---|
| [01_GLOSSARY](./01_GLOSSARY.md) | Begriffe | GL-001…GL-030 |
| [02_ROLES_PERMISSIONS](./02_ROLES_PERMISSIONS.md) | Rollen, Berechtigungs-/Sichtbarkeitsmatrix | – |
| [03_USER_JOURNEYS](./03_USER_JOURNEYS.md) | Kernabläufe | JRN-001…JRN-018 |
| [04_FUNCTIONAL_REQUIREMENTS](./04_FUNCTIONAL_REQUIREMENTS.md) | Funktionale Anforderungen | FR-001…FR-046 |
| [05_BUSINESS_RULES](./05_BUSINESS_RULES.md) | Geschäftsregeln | BR-001…BR-034 |
| [06_STATE_MODELS](./06_STATE_MODELS.md) | Zustandsmodelle | ST-001…ST-011 |
| [07_DATA_OBJECTS](./07_DATA_OBJECTS.md) | Fachliche Datenobjekte | DO-001…DO-024 |
| [08_EXCEPTIONS_ESCALATIONS](./08_EXCEPTIONS_ESCALATIONS.md) | Ausnahmen/Eskalationen | EXC-001…EXC-016 |
| [09_PRIVACY_SECURITY_AUDIT](./09_PRIVACY_SECURITY_AUDIT.md) | Privacy/Sicherheit/Audit | PR-001…PR-014 |
| [10_NON_FUNCTIONAL_REQUIREMENTS](./10_NON_FUNCTIONAL_REQUIREMENTS.md) | Nichtfunktionale Anforderungen | NFR-001…NFR-010 |
| [11_ACCEPTANCE_CRITERIA](./11_ACCEPTANCE_CRITERIA.md) | Akzeptanzkriterien | AC-001…AC-045 |
| [12_TRACEABILITY_MATRIX](./12_TRACEABILITY_MATRIX.md) | Traceability | – |
| [13_OPEN_POINTS](./13_OPEN_POINTS.md) | Offene Punkte/Prüfpflichten | OP-001…OP-033 |

## 11. Bekannte Blocker und offene Punkte

Es bestehen **keine** das Produktverhalten des MVP blockierenden Widersprüche. Offene, extern zu prüfende, zurückgestellte und zu validierende Punkte sind vollständig in [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md) geführt. Hervorzuheben:

- **EXTERN ZU PRÜFEN (kein Umsetzungsblocker, aber vor Live-Betrieb zwingend):** Vermittler-/Betreiberrolle (OP-007), Zahlungsfluss/FINMA/MWST (OP-008), Storno-/Absage-/Erstattungsrecht (OP-009), Datenschutz Angehörige/Übertragung/Feedback (OP-010/OP-011/OP-012), Altersfokus (OP-013), Marken-/Domain-/App-Store-Prüfungen (OP-014).
- **OFFEN:** Soft-Launch (OP-001), regulärer Broadcast (OP-002), Übertragungs-Guardrails (OP-003), Bewertungs-Einsprache (OP-004), dauerhafte Supportzeiten (OP-005), Native-App-Startentscheid/Plattform (OP-006).
- **ZU VALIDIEREN:** Provision (OP-015), Pilotdauer (OP-016), Dichte (OP-017), Parallelbetrieb (OP-018) u. a.

## 12. Freigabestatus der Spezifikation

**Entwurf – nicht freigegeben.** Der Dokumentensatz ist bewusst **uncommitted** und wartet auf eine **separate ausdrückliche Freigabe** des Gründers. Diese Spezifikation autorisiert **keine** technische Implementierung und trifft **keine** Architektur- oder Technologieentscheidung.
