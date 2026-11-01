# Frello – Projektanweisungen für Claude Code

## Git-Grenzen

- Commit, Push, Pull Request, Merge, Rebase, Amend, Tag und Release sind nur nach ausdrücklicher Freigabe des Gründers für die konkrete Aktion erlaubt.
- Niemals Force-Push oder eine Umschreibung bestehender Git-Historie durchführen.
- Niemals direkt auf `main` pushen.
- Bestehende Änderungen des Benutzers dürfen nicht verworfen, überschrieben oder ungefragt formatiert werden.
- Vor jeder Git-Aktion sind Branch, Working Tree, Diff-Umfang und Ziel eindeutig zu prüfen.

## Geschützte Brand-Master

Die folgenden Dateien sind die kanonischen finalen Frello-Master:

- `assets/brand/frello-symbol.svg`
- `assets/brand/frello-wordmark.svg`

Vor jeder Arbeit an Brand-Assets muss `docs/brand/BRAND_ASSETS.md` vollständig gelesen werden.

Die Master dürfen ohne ausdrückliche Freigabe des Gründers für die konkret benannte Datei nicht:

- verändert,
- neu gespeichert,
- formatiert,
- optimiert,
- minimiert,
- durch SVGO oder Prettier verarbeitet,
- neu gezeichnet,
- vereinfacht,
- umgefärbt,
- in andere Dateien eingebettet oder
- durch eine Ableitung ersetzt werden.

Aktuell verbindliche SHA-256-Prüfsummen:

- `frello-symbol.svg`: `a8527e96844a1fb2163197f0c80854db3d8c0e498e2b84516b3b06c785ef34e2`
- `frello-wordmark.svg`: `632ce9234eb06c20cbfce266b4a3f45130ff1d3a1f7f2d631a915a4bd7e715dc`

Bei einer unerwarteten Abweichung muss die Arbeit sofort gestoppt und die Abweichung gemeldet werden. Die Master dürfen nicht eigenständig „repariert“ werden.

Benötigte Favicons, App-Icons, Rasterdateien, Social-Media-Varianten oder andere Formate müssen als separate Ableitungen erstellt werden. Die beiden Master bleiben unverändert.

## Markenrechtliche Grenze

ADR-001 und D-02 bleiben vollständig in Kraft. Die interne Ablage der Master ist keine Freigabe für öffentlichen Markenaufbau, Markenanmeldung oder öffentliche Ausspielung. Vor solchen Schritten bleibt die vorgesehene professionelle Ähnlichkeitsrecherche erforderlich.
