# 06 · Zustandsmodelle

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md) · [Datenobjekte](./07_DATA_OBJECTS.md) · [Geschäftsregeln](./05_BUSINESS_RULES.md)

Fachliche Zustände und erlaubte Übergänge. **Keine** technische Zustandsmaschine, kein Datenbankschema. Je Übergang: Ausgangszustand → Auslöser → erforderliche Berechtigung → Zielzustand → Geschäftsregel → Auditbedarf → relevante Ausnahmefälle ([EXC](./08_EXCEPTIONS_ESCALATIONS.md)).

## ST-001 · Anbieter (DO-005/DO-006)

Zustände: `registriert` → `in Prüfung` → {`verifiziert` | `abgelehnt`} → (`aktiv` | `gesperrt`)

| Ausgang | Auslöser | Berechtigung | Ziel | Regel | Audit | Ausnahme |
|---|---|---|---|---|---|---|
| registriert | Anbieter reicht Verifikation ein | Anbieter | in Prüfung | BR-001 | ja | — |
| in Prüfung | Prüfung positiv | Kuration | verifiziert/aktiv | BR-001 | ja | EXC-014 |
| in Prüfung | Prüfung negativ | Kuration | abgelehnt | BR-001 | ja | EXC-014 |
| aktiv | schwerer Verstoss | Moderation/Admin | gesperrt | BR-001; §29 | ja | EXC-011/EXC-012 |

## ST-002 · Event (DO-007/DO-008)

Zustände: `Entwurf` → `in Prüfung` → {`freigegeben`→`veröffentlicht` | `abgelehnt` | `zur Überarbeitung zurückgegeben`} → (`buchbar` | `ausgebucht (Warteliste offen)` | `Buchungsschluss erreicht`) → {`durchgeführt` | `abgesagt` | `ausgefallen`} → `abgeschlossen (bewertbar)`

| Ausgang | Auslöser | Berechtigung | Ziel | Regel | Audit | Ausnahme |
|---|---|---|---|---|---|---|
| Entwurf | Anbieter reicht zur Prüfung ein | Anbieter (F) | in Prüfung | BR-004/BR-005 | ja | EXC-013 |
| in Prüfung | vollständig & konform | Kuration | freigegeben/veröffentlicht | BR-004 | ja | — |
| in Prüfung | Pflichtangaben fehlen/unklar | Kuration | zur Überarbeitung zurückgegeben | BR-004/BR-005 | ja | EXC-013 |
| in Prüfung | nicht zulässig | Kuration | abgelehnt | BR-004 | ja | EXC-014 |
| veröffentlicht/buchbar | Höchstzahl erreicht | System (Regel) | ausgebucht (Warteliste offen) | BR-007/BR-008 | nein | EXC-002 |
| buchbar/ausgebucht | Buchungsschluss erreicht | System (Regel) | Buchungsschluss erreicht | BR-007 | nein | — |
| Buchungsschluss/vor Beginn | Mindestzahl erreicht, Anbieter bestätigt | Anbieter | durchgeführt | BR-011 | ja | EXC-001 |
| vor Beginn | Anbieter sagt ab (inkl. Wetter/kurzfristig) | Anbieter | abgesagt | BR-018 | ja | EXC-006/EXC-007 |
| vor/während | zentrale Leistung fällt aus | Anbieter/Frello | ausgefallen | BR-019 | ja | EXC-008 |
| durchgeführt | Eventende | System (Regel) | abgeschlossen (bewertbar) | BR-020 | nein | — |

## ST-003 · Buchung (DO-009)

Zustände: `initiiert` → `bezahlt/bestätigt` → {`storniert` | `übertragen` | `teilgenommen` | `no-show`} → (`bewertbar`)

| Ausgang | Auslöser | Berechtigung | Ziel | Regel | Audit | Ausnahme |
|---|---|---|---|---|---|---|
| — | Buchung durch verifizierte/angehörige Person | Teilnehmende/Angehörige (V) | initiiert | BR-002/BR-003/BR-025 | ja | EXC-005 |
| initiiert | Vollzahlung online **oder** Vor-Ort-Zusage | Teilnehmende/Angehörige | bezahlt/bestätigt | BR-013/BR-014 | ja | EXC-005 |
| bezahlt/bestätigt | Storno nach Modell | Teilnehmende/Angehörige/Support | storniert | BR-010 | ja | EXC-015 |
| bezahlt/bestätigt | Übertragung (≥24 h selbst; <24 h Support) | Teilnehmende/Support | übertragen | BR-017 | ja | EXC-009 |
| bezahlt/bestätigt | Check-in vor Ort | Anbieter | teilgenommen | BR-020 | ja | — |
| bezahlt/bestätigt | Nichterscheinen ohne Absage | System/Anbieter | no-show | BR-012 | ja | EXC-010 |
| teilgenommen | Eventende | System (Regel) | bewertbar | BR-020 | nein | — |

## ST-004 · Wartelisteneintrag (DO-011)

Zustände: `wartend` → `Nachrückangebot aktiv` → {`angenommen (→Buchung)` | `verfallen` | `zurückgezogen`}

| Ausgang | Auslöser | Berechtigung | Ziel | Regel | Audit | Ausnahme |
|---|---|---|---|---|---|---|
| — | Eintrag bei ausgebuchtem Event | Teilnehmende (V) | wartend | BR-008 | nein | EXC-002 |
| wartend | Platz frei (regulär) | System (Regel) | Nachrückangebot aktiv | BR-008 | ja | EXC-003 |
| wartend | Platz frei bei <2 h (Broadcast) | System (Regel) | Nachrückangebot aktiv (alle Berechtigten) | BR-009 | ja | EXC-004 |
| Nachrückangebot aktiv | fristgerechte Zusage | Teilnehmende | angenommen (→Buchung) | BR-008/BR-009 | ja | — |
| Nachrückangebot aktiv | Frist abgelaufen / niemand sagt zu | System (Regel) | verfallen | BR-008/BR-009 | ja | EXC-003 |

## ST-005 · Nachrückangebot (DO-012)

Zustände: `offen (befristet)` → {`angenommen` | `abgelaufen`}. Reguläre Frist 12 h; bei <24 h bis Beginn 2 h; bei <2 h Broadcast an alle Berechtigten, erste vollständig bestätigte digitale Zusage gewinnt; sagt niemand zu, bleibt der Platz frei. Berechtigung: Teilnehmende (V). Regel: BR-008/BR-009. Audit: ja. Ausnahme: EXC-003/EXC-004.

## ST-006 · Konto & Telefonnummerverifikation (DO-001)

Zustände: `angelegt` → `telefonverifiziert` → `aktiv` → (`eingeschränkt` | `gesperrt`)

| Ausgang | Auslöser | Berechtigung | Ziel | Regel | Audit | Ausnahme |
|---|---|---|---|---|---|---|
| — | Kontoerstellung | Besucher | angelegt | BR-002 | ja | — |
| angelegt | Telefonnummer verifiziert | Kontoinhaber | telefonverifiziert/aktiv | BR-003 | ja | — |
| aktiv | wiederholter No-show | Moderation (Regel) | eingeschränkt (Buchungsbegrenzung, Einsprache) | BR-012 | ja | EXC-010 |
| aktiv | schwerer Verstoss | Moderation | gesperrt | §29 | ja | EXC-011/EXC-012 |

> Ohne Zustand `telefonverifiziert` ist keine Buchung möglich (BR-003).

## ST-007 · Check-in / Teilnahme (DO-016)

Zustände: `erwartet` → {`eingecheckt (teilgenommen)` | `no-show`}. Auslöser: Gastgeberbestätigung vor Ort. Berechtigung: Anbieter (F). Regel: BR-020/BR-012. Audit: ja. Ausnahme: EXC-010.

## ST-008 · Bewertung (DO-017)

Zustände: `berechtigt` → `eingereicht` → `aggregiert` → (öffentlich `angezeigt ab 5`)

| Ausgang | Auslöser | Berechtigung | Ziel | Regel | Audit | Ausnahme |
|---|---|---|---|---|---|---|
| teilgenommen (Check-in) | Bewertung möglich | Teilnehmende | berechtigt | BR-020 | nein | — |
| berechtigt | Bewertung abgegeben | Teilnehmende | eingereicht | BR-021 | ja | — |
| eingereicht | Aggregation | System (Regel) | aggregiert | BR-021 | nein | — |
| aggregiert | ≥ 5 bestätigte Bewertungen | System (Regel) | öffentlich angezeigt (mit Anzahl) | BR-021 | nein | — |

## ST-009 · Rückerstattung (DO-015)

Zustände: `ausgelöst` → `in Bearbeitung` → `abgeschlossen`. Auslöser: Storno nach Modell, Anbieterabsage/Ausfall (volle Rückerstattung Standard). Berechtigung: Kuration/Support/Administration. Regel: BR-010/BR-018/BR-019. Audit: ja. Ausnahme: EXC-015. **Zahlungs-/Erstattungsfluss EXTERN ZU PRÜFEN (OP-008/OP-009).**

## ST-010 · Moderationsfall (DO-022)

Zustände: `gemeldet` → `in Prüfung` → {`Massnahme` | `verworfen`} → (`Einsprache` → `entschieden`). Dringende Sicherheitsfälle priorisiert. Berechtigung: Moderation. Regel: §29; D-35. Audit: ja. Ausnahme: EXC-011/EXC-012.

## ST-011 · Supportfall (DO-023)

Zustände: `eingegangen` → `in Bearbeitung (Rückruf)` → `abgeschlossen`. Pilotzeiten Mo–Fr 09–17, Rückruf < 1 Werktag, ausserhalb asynchron, dringende Sicherheit priorisiert. Berechtigung: Support. Regel: BR-026. Audit: ja. Ausnahme: EXC-009/EXC-015.

## Sichtbare Platzhalter

- **[OFFEN – D-44, OP-002]** Genereller (regulärer) Wartelisten-Broadcast über den <2-h-Sonderfall hinaus.
- **[OFFEN – D-40, OP-003]** Detaillierte Anzeige-/Bestätigungsschritte der Buchungsübertragung.
- **[OFFEN – D-34, OP-004]** Genauer Einspracheprozess in ST-010 (Bewertungs-/Feedback-Einsprache).
