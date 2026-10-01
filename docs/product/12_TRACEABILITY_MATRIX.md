# 12 · Traceability-Matrix

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md)

Bidirektionale Rückverfolgung: jede der 46 Gründerentscheidungen (`D-01`…`D-46`) ist auf abgeleitete Anforderungen/Regeln bzw. – bei MVP-fernen/zurückgestellten/externen Punkten – auf mindestens eine `OP-ID` abgebildet. `D-09` und `D-10` sind trotz kombiniertem Registereintrag getrennt geführt; der No-show-Unterentscheid ist als `D-19` referenziert (keine neue D-ID).

## Vorwärts: D-ID → abgeleitete Aussagen

| D-ID | ADR | Klasse | FR | BR | ST | DO | PR/NFR/EXC | AC | OP | Abdeckung |
|---|---|---|---|---|---|---|---|---|---|---|
| D-01 | ADR-001 | AUSSTEHENDE UMSETZUNG | – | – | – | – | – | – | OP-014 | ✓ (OP) |
| D-02 | ADR-001 | VERBINDLICH · EXTERN | – | – | – | – | – | – | OP-014 | ✓ (OP) |
| D-03 | ADR-001 | ZURÜCKGESTELLT | – | – | – | – | – | – | OP-014, OP-029 | ✓ (OP) |
| D-04 | ADR-003 | NICHT ANWENDBAR | – | BR-032 | – | – | – | – | OP-030 | ✓ |
| D-05 | ADR-001 | AUSSTEHENDE UMSETZUNG | – | – | – | – | – | – | OP-014 | ✓ (OP) |
| D-06 | ADR-001 | AUSSTEHENDE UMSETZUNG | – | – | – | – | – | – | OP-014 | ✓ (OP) |
| D-07 | ADR-002 | VERBINDLICH · EXTERN | FR-007, FR-008 | BR-030 | – | DO-002 | NFR-001 | AC-007, AC-008 | OP-013 | ✓ |
| D-08 | ADR-003 | VERBINDLICH | FR-032, FR-033 | BR-001 | ST-001 | DO-005, DO-006 | – | AC-032, AC-033 | – | ✓ |
| D-09 | ADR-002 | VERBINDLICH | FR-001 | BR-027 | – | – | NFR-005 | AC-001 | OP-017 | ✓ |
| D-10 | ADR-002 | VERBINDLICH | FR-001 | BR-027 | – | – | NFR-005 | AC-001 | – | ✓ |
| D-11 | ADR-003 | ZU VALIDIEREN | – | BR-033 | – | – | – | – | OP-015 | ✓ |
| D-12 | ADR-003 | VERBINDLICH | FR-041 | BR-034 | – | – | – | AC-040 | OP-027 | ✓ |
| D-13 | ADR-003 | ZURÜCKGESTELLT | – | BR-015 | – | – | – | – | OP-026 | ✓ (OP) |
| D-14 | ADR-003 | TEILWEISE · EXTERN | – | BR-032 | – | – | – | – | OP-007 | ✓ |
| D-15 | ADR-005 | VERBINDLICH · EXTERN | FR-013 | BR-025 | ST-003 | DO-004 | PR-006 | AC-013 | OP-010 | ✓ |
| D-16 | ADR-003 | VERBINDLICH · EXTERN | – | BR-031 | – | – | NFR-006 | – | OP-007 | ✓ |
| D-17 | ADR-004 | TEILWEISE · EXTERN | FR-010, FR-011 | BR-013 | ST-003 | DO-010 | EXC-005 | AC-010, AC-011 | OP-008 | ✓ |
| D-18 | ADR-004 | VERBINDLICH · EXTERN | FR-017, FR-018 | BR-010 | ST-003, ST-009 | DO-014 | EXC-015 | AC-017, AC-018 | OP-009 | ✓ |
| D-19 | ADR-004 | VERBINDLICH | FR-014, FR-015, FR-019, FR-024, FR-027 | BR-007, BR-008, BR-011, BR-012 | ST-002, ST-004, ST-007 | DO-011, DO-016 | EXC-001, EXC-003, EXC-010 | AC-014, AC-015, AC-019, AC-024, AC-027 | – | ✓ (inkl. No-show) |
| D-20 | ADR-005 | VERBINDLICH | FR-005, FR-009 | BR-002 | ST-006 | DO-001 | – | AC-005, AC-009 | – | ✓ |
| D-21 | ADR-005 | VERBINDLICH | FR-003, FR-008 | BR-023 | – | DO-002 | PR-008 | AC-003, AC-008 | – | ✓ |
| D-22 | ADR-005 | VERBINDLICH | FR-007, FR-008 | BR-023 | – | DO-002 | PR-005 | AC-007, AC-008 | – | ✓ |
| D-23 | ADR-005 | VERBINDLICH | FR-025, FR-026 | BR-024 | ST-010 | DO-019, DO-020, DO-021 | PR-009 | AC-025, AC-026 | – | ✓ |
| D-24 | ADR-006 | VERBINDLICH | FR-028, FR-030 | BR-020, BR-021 | ST-008 | DO-017 | – | AC-028, AC-030 | OP-023 | ✓ |
| D-25 | ADR-006 | VERBINDLICH | FR-031 | BR-022 | – | DO-018 | PR-010 | AC-031 | OP-012 | ✓ |
| D-26 | ADR-005 | VERBINDLICH | FR-006 | BR-003 | ST-006 | DO-001 | PR-004 | AC-006 | – | ✓ |
| D-27 | ADR-005 | TEILWEISE | FR-039 | BR-026 | ST-011 | DO-023 | NFR-007 | AC-038 | OP-005 | ✓ |
| D-28 | ADR-007 | VERBINDLICH (geändert D-46) | – | – | – | – | NFR-004 | – | OP-006 | ✓ |
| D-29 | ADR-002 | VERBINDLICH | FR-001 | BR-027 | – | DO-011 | – | AC-001 | OP-017, OP-018 | ✓ |
| D-30 | ADR-007 | AKZEPTIERT · operativ zurückgestellt | – | – | – | – | – | – | OP-029 | ✓ (OP) |
| D-31 | ADR-008 | VERBINDLICH | FR-004, FR-034, FR-045 | BR-005 | ST-002 | DO-007 | – | AC-004, AC-034, AC-044 | – | ✓ |
| D-32 | ADR-008 | VERBINDLICH | FR-002 | BR-006 | – | DO-007 | – | AC-002 | OP-032 | ✓ |
| D-33 | ADR-008 | VERBINDLICH | FR-035, FR-046 | BR-004 | ST-002 | DO-008, DO-024 | PR-011 | AC-035, AC-045 | – | ✓ |
| D-34 | ADR-006 | VERBINDLICH · OFFEN · EXTERN | FR-029, FR-030, FR-031 | BR-021, BR-022 | ST-008 | DO-017, DO-018 | PR-010 | AC-029, AC-030, AC-031 | OP-004, OP-012 | ✓ |
| D-35 | ADR-005 | PILOTPARAMETER | FR-039, FR-040 | BR-026 | ST-010, ST-011 | DO-022, DO-023 | PR-012, NFR-007 | AC-038, AC-039 | OP-005 | ✓ |
| D-36 | ADR-002 | PILOTPARAMETER · ZU VALIDIEREN | – | BR-029 | – | – | – | – | OP-016 | ✓ |
| D-37 | ADR-002 | VERBINDLICH | – | BR-028 | – | – | – | – | OP-001 | ✓ |
| D-38 | ADR-003 | VERBINDLICH | FR-042 | BR-016 | – | – | – | AC-041 | OP-027 | ✓ |
| D-39 | ADR-003 | VERBINDLICH | FR-043 | BR-015 | – | DO-007 | – | AC-042 | OP-026 | ✓ |
| D-40 | ADR-004 | TEILWEISE · OFFEN · EXTERN | FR-023 | BR-017 | ST-003 | DO-013 | PR-007, EXC-009 | AC-023 | OP-003, OP-011 | ✓ |
| D-41 | ADR-004 | VERBINDLICH | FR-012 | BR-014 | ST-003 | DO-010 | – | AC-012 | OP-028 | ✓ |
| D-42 | ADR-004 | TEILWEISE · EXTERN | FR-020, FR-022 | BR-018 | ST-002, ST-009 | DO-015 | EXC-006, EXC-007 | AC-020, AC-022 | OP-009 | ✓ |
| D-43 | ADR-004 | TEILWEISE · EXTERN | FR-021, FR-022 | BR-019 | ST-002, ST-009 | DO-015, DO-024 | EXC-008, PR-011 | AC-021, AC-022 | OP-009 | ✓ |
| D-44 | ADR-004 | VERBINDLICH · OFFEN | FR-016 | BR-009 | ST-004, ST-005 | DO-012 | EXC-004 | AC-016 | OP-002, OP-020 | ✓ |
| D-45 | ADR-007 | AKZEPTIERT | – | – | – | – | – | – | OP-006 | ✓ (OP) |
| D-46 | ADR-007 | VERBINDLICH | – | – | – | – | NFR-003, NFR-004 | – | OP-006, OP-019, OP-031 | ✓ |

**Abdeckung D-01…D-46: 46/46.** MVP-relevante D-IDs verweisen auf mindestens eine FR/BR; MVP-ferne, zurückgestellte, nicht anwendbare oder externe D-IDs (D-01/02/03/05/06/13/30/45) verweisen auf mindestens eine OP-ID.

## Rückwärts: neue IDs → Quelle

- **Jede `FR` (FR-001…FR-046)** nennt in [`04_FUNCTIONAL_REQUIREMENTS.md`](./04_FUNCTIONAL_REQUIREMENTS.md) mindestens eine `D-ID` und `ADR` sowie zugehörige BR/ST/DO/EXC/AC.
- **Jede `BR` (BR-001…BR-034)** nennt in [`05_BUSINESS_RULES.md`](./05_BUSINESS_RULES.md) ihre `D-ID`/`ADR`.
- **Jede `AC` (AC-001…AC-045)** nennt in [`11_ACCEPTANCE_CRITERIA.md`](./11_ACCEPTANCE_CRITERIA.md) FR/BR-Bezug und `D-ID`/`ADR`.
- **`ST` (ST-001…ST-011), `DO` (DO-001…DO-024), `EXC` (EXC-001…EXC-016), `PR` (PR-001…PR-014), `NFR` (NFR-001…NFR-010), `JRN` (JRN-001…JRN-018), `OP` (OP-001…OP-033), `GL` (GL-001…GL-030)** sind jeweils in ihren Moduldateien mit Quelle geführt.
- **Keine verwaisten neuen IDs:** jede neue ID ist mindestens einmal aus einer D-ID/ADR abgeleitet oder (bei OP) an eine offene/externe D-ID/A-ID gebunden.

## Annahmen-Bezug (bestehende A-IDs)

A-03, A-04, A-05, A-08, A-09, A-10, A-11, A-12, A-13, A-16, A-18, A-19, A-26, A-27, A-28, A-29 sind über `OP-015`…`OP-025` referenziert (siehe [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md)). A-IDs werden nur referenziert, nicht neu vergeben.
