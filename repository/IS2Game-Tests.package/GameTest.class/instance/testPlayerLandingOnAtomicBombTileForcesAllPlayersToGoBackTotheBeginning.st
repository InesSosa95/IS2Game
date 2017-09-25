tests - tiles
testPlayerLandingOnAtomicBombTileForcesAllPlayersToGoBackTotheBeginning

	| game bob tiles mary |

	tiles := (1 to: 10) collect: [ :e | Tile empty ].
	tiles at: 6 put: self atomicBombTile.
	bob := 'Bob'.
	mary := 'Mary'.
	game := IS2Game
		withBoard: (Board withTiles: tiles)
		laps: 3
		dice: (Dice withSides: 6 source: (SequentialGenerator generating: #(4 4 1)))
		for: (Array with: bob with: mary).
	game playTurnFor: bob.
	game playTurnFor: mary.
	self assert: (game positionOf: bob) tileNumber equals: 4.
	self assert: (game positionOf: bob) lap equals: 0.
	self assert: (game positionOf: mary) tileNumber equals: 4.
	self assert: (game positionOf: mary) lap equals: 0.
	game playTurnFor: bob.
	self assert: (game positionOf: bob) tileNumber equals: 0.
	self assert: (game positionOf: bob) lap equals: 0.
	self assert: (game positionOf: mary) tileNumber equals: 0.
	self assert: (game positionOf: mary) lap equals: 0