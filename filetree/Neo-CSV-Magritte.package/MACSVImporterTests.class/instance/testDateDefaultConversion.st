tests
testDateDefaultConversion
	self readInput: 'DOB,Ignored Field
2/28/2020,something'.
	self assert: objects first birthdate equals: (Date year: 2020 month: 2 day: 28).