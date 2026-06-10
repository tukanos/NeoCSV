tests
testEmptyField
	self readInput: 'Phone Number,Ignored Field
,something'.
	self assert: objects first phoneNumber equals: nil.