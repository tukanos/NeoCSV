tests
testDateDefaultConversion
	self readInput: 'DOB,Ignored Field
2/28/2020,something'.
	self assert: objects first birthdate equals: '2/28/2020' asDate.