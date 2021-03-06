tests - tiles
testPlayerLandingOnTimeMachineTileWithNotEnoughHistoryGoesBackToFirstTurnPosition

	| game tiles |

	tiles := self emptyTiles: 10.
	tiles at: 2 put: (Tile numbered: 2 withEffect: Effect timeMachine).

	game := self gameWithTiles: tiles.
	self assert: (game positionOf: bob) tileNumber equals: 1.
	game playTurnFor: bob.
	self assert: (game positionOf: bob) tileNumber equals: 1