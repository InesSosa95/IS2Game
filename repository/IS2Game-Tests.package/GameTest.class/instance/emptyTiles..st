accessing
emptyTiles: aNumberOfTiles

	^ (1 to: aNumberOfTiles) collect: [ :n | Tile numbered: n ]