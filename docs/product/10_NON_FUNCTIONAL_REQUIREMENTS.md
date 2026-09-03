# 10 · Nichtfunktionale Anforderungen (fachlich)

**Teil der [Produktspezifikation Frello V0.1](./00_PRODUCT_SPEC_V0.1.md)** · [README](./README.md)

Ausschliesslich **fachliche** Qualitätsanforderungen. **Keine** technische Architektur, keine Performancewerte, keine Cloudplattformen/Frameworks – ausser soweit bereits verbindlich beschlossen (installierbare PWA, Sprache Deutsch, Pilot-Supportzeiten).

| ID | Anforderung | Klasse | Beschreibung | Quelle |
|---|---|---|---|---|
| NFR-001 | Zugänglichkeit für 65+ | VERBINDLICH | Bedienung und Darstellung sind auf die primäre Zielgruppe 65+ ausgelegt (gut lesbar, einfache Abläufe). | D-07; §9 |
| NFR-002 | Verständliche Sprache und Bedienung | VERBINDLICH | Klare, verständliche Sprache; einfache, konsistente Abläufe; wenige Schritte pro Aufgabe. | §9/§15 |
| NFR-003 | Responsive Nutzung | VERBINDLICH | Nutzung auf gängigen Bildschirmgrössen (Desktop/Tablet/Smartphone). | D-46; §32 |
| NFR-004 | Installierbare PWA als MVP-Ziel | VERBINDLICH | Der MVP wird als responsive Webplattform bzw. **installierbare PWA** bereitgestellt (verbindliches MVP-Launch-Ziel). Der öffentliche Pilotstart hängt nicht von einer nativen App ab. Technische Umsetzung/Framework **nicht** festgelegt. | D-46; ADR-007 |
| NFR-005 | Sprache Deutsch im Pilot | VERBINDLICH | Produktsprache im Pilot ist Deutsch; kein mehrsprachiger Start im Pilot. | D-09/D-10; ADR-002 |
| NFR-006 | Transparenz | VERBINDLICH | Preis (inkl. enthaltener Leistungen), Vermittlerrolle, Durchführungsentscheid, Stornomodell und Zugänglichkeit werden transparent ausgewiesen. | D-16/D-18/D-31; §16 |
| NFR-007 | Supporterreichbarkeit im Pilot | PILOTPARAMETER | Rückrufservice Mo–Fr 09:00–17:00 (Rückruf < 1 Werktag), ausserhalb asynchron, dringende Sicherheit priorisiert. Dauerhafte Zeiten OFFEN. | D-35; ADR-005 |
| NFR-008 | Nachvollziehbare Fehlermeldungen | VERBINDLICH | Fehler-, Ausnahme- und Hinweismeldungen sind verständlich und handlungsleitend (fachlich). | §15; abgeleitet aus EXC-Fällen |
| NFR-009 | Sicherheit und Datenschutz als Qualitätsziel | VERBINDLICH | Sicherheit und Datenschutz sind durchgängige Qualitätsziele (siehe [`09_PRIVACY_SECURITY_AUDIT.md`](./09_PRIVACY_SECURITY_AUDIT.md)); konkrete Rechtsfolgen EXTERN ZU PRÜFEN. | §29/§30 |
| NFR-010 | Auditierbarkeit relevanter Entscheidungen | VERBINDLICH | Relevante fachliche Entscheidungen (Anbieterprüfung, Eventfreigabe, Übertragung, Ausfall, Rückerstattung, Sanktion) sind nachvollziehbar. | D-33/D-40/D-43 |

## Ausdrücklich nicht festgelegt

Programmiersprache, Frameworks, native/Cross-Platform-Technologie, Datenbank, Hosting/Cloud, Authentifizierungs-/Payment-/SMS-/E-Mail-/Chat-/Push-/Analytics-Anbieter, API-Struktur, Datenbankschema, Deploymentverfahren, konkrete Verschlüsselungsimplementierung, Performance-Zielwerte, Systemarchitektur. Diese gehören in eine spätere Architekturphase (siehe [`13_OPEN_POINTS.md`](./13_OPEN_POINTS.md), OP-006).
