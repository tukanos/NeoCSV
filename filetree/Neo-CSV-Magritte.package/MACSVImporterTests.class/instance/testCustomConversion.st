tests
testCustomConversion
	self readInput: 'Phone Number,Ignored Field
1-203-555-0100,something'.
	self assert: objects first phoneNumber equals: 12035550100.