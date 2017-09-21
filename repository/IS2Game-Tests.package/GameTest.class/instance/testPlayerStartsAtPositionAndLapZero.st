tests
testPlayerStartsAtPositionAndLapZero

	| game bob mary |

	bob := 'Bob'.
	mary := 'Mary'.
	game := IS2Game
		withBoardOfLength: 5
		laps: 3
		dices: (Dice withSides: 6 source: (SequentialGenerator generating: #(1)))
		for: (Array with: bob with: mary).
	self assert: (game positionOf: bob) lap equals: 0.
	self assert: (game positionOf: bob) tileNumber equals: 0.
	self assert: (game positionOf: mary) lap equals: 0.
	self assert: (game positionOf: mary) tileNumber equals: 0