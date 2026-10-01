# Frello – Kanonische Markenassets

- **Status:** canonical / final
- **Verankert am:** 2026-09-02
- **Kanonischer Asset-Ordner:** [`assets/brand/`](../../assets/brand/)
- **Provenienz:** Finale, vom Gründer bereitgestellte Frello-Markenassets. Es werden **keine** Markenregistrierung und **keine** geklärten oder übertragenen Rechte behauptet (siehe [ADR-001](../business/decisions/ADR-001-marke-domain-schutz.md)).

Dieses Dokument ist die verbindliche Referenz für die zwei finalen Frello-Markenmaster. Andere Repository-Dokumente verweisen hierher, statt Asset-Fakten zu duplizieren.

## Asset-Tabelle

| Datei | Zweck | Pfad | ViewBox | Bytes | SHA-256 |
|---|---|---|---|---|---|
| `frello-symbol.svg` | Kompaktes Doppel-L-Signet; Quelle für spätere Favicons / App-Icons | `assets/brand/frello-symbol.svg` | `0 0 276 276` | 1729 | `a8527e96844a1fb2163197f0c80854db3d8c0e498e2b84516b3b06c785ef34e2` |
| `frello-wordmark.svg` | Vollständige horizontale Wortmarke | `assets/brand/frello-wordmark.svg` | `0 0 720 276` | 10854 | `632ce9234eb06c20cbfce266b4a3f45130ff1d3a1f7f2d631a915a4bd7e715dc` |

Beide Dateien haben einen **transparenten Hintergrund**. Es wird **keine** Hintergrundfläche ergänzt.

## Markenfarben

Fixiert aus den Assets:

| Farbe | Hex |
|---|---|
| Korallrot | `#FF584D` |
| Pflaume / Violett | `#4E1354` |

## Korrekte Verwendung

- **`frello-wordmark.svg`** für horizontale Marken-/Headerdarstellung (klar lesbare Wortmarke ohne Köpfe, mit normalem Doppel-L).
- **`frello-symbol.svg`** für kompaktes Signet, App-Icon-Quelle und Favicon-Quelle (Doppel-L als zwei eigenständige Personen).
- Beide Master werden als **externe Assets referenziert**, niemals inline in Komponenten kopiert.
- Seitenverhältnis immer bewahren; keine erzwungene Verzerrung durch gleichzeitig fest definierte, unpassende `width`/`height`-Werte.

## Verbotene Veränderungen (Schutzregeln)

- Master-SVGs **nie** optimieren, formatieren, minifizieren, nachzeichnen oder direkt verändern (kein Prettier, SVGO, XML-Formatter, Linter-Fix, Minifier).
- Nicht in Figma/Illustrator/Inkscape öffnen und neu speichern.
- Keine Pfade vereinfachen, runden, kombinieren, spiegeln, verschieben oder neu berechnen.
- Keine Kommentare, Titel, IDs, Gruppen, Attribute, Farben, Koordinaten, Transformationen, Reihenfolgen, Leerzeichen oder Zeilenumbrüche ändern.
- Keine XML-Deklaration ergänzen oder entfernen.
- Keine erfundenen Farb-, Dark-Mode- oder monochromen Varianten, Outlines oder neuen Logos.
- Die `.txt`-Transportdateien sind reine Transportquellen und dürfen nicht als Markenassets eingecheckt oder verwendet werden.

## Accessibility

- **Dekoratives Logo:** leeres `alt`-Attribut bzw. `aria-hidden` nach Framework-Konvention.
- **Informatives Markenlogo:** zugänglicher Name „Frello“.
- Beide Master enthalten bereits `role="img"` sowie `<title>`/`<desc>` mit `aria-labelledby`.

## Regeln für zukünftige Ableitungen

- Ableitungen (Favicons, App-Icon-Sets, Rasterexporte, Farbvarianten) werden **immer als separate Dateien** erzeugt und ersetzen **nie** die Master.
- `frello-symbol.svg` ist die kanonische Quelle für Favicon-/App-Icon-Ableitungen.
- Keine neuen Rasterdateien, Favicons oder Varianten ohne ausdrücklichen Auftrag.

## Verifikationsbefehle

```sh
# Bytegrösse und SHA-256 der Master prüfen
wc -c assets/brand/frello-symbol.svg assets/brand/frello-wordmark.svg
sha256sum assets/brand/frello-symbol.svg assets/brand/frello-wordmark.svg

# Erwartet:
#   frello-symbol.svg    1729 Bytes  a8527e96844a1fb2163197f0c80854db3d8c0e498e2b84516b3b06c785ef34e2
#   frello-wordmark.svg 10854 Bytes  632ce9234eb06c20cbfce266b4a3f45130ff1d3a1f7f2d631a915a4bd7e715dc
```

## Verweise auf bestehende Entscheidungen

- **[ADR-001 / D-02](../business/decisions/ADR-001-marke-domain-schutz.md)** hält fest, dass Marketing-/Logoarbeiten bis zum Abschluss der professionellen markenrechtlichen Ähnlichkeitsrecherche (D-02 Stufe 2, Status **EXTERN ZU PRÜFEN / ausstehend**) zurückzuhalten sind. Die Verankerung dieser finalen Master erfolgt auf direkte Gründeranweisung; die externe markenrechtliche Prüfung bleibt davon unberührt und weiterhin offen, bevor öffentlicher Markenaufbau oder eine Markenanmeldung erfolgt. Es wird keine neue Markenentscheidung und keine neue D-ID im [Entscheidungsregister](../business/02_OPEN_FOUNDER_DECISIONS.md) erfunden; eine formale Fortschreibung obliegt dem Gründer.
