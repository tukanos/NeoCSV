tests
testTrailingLeadingSpaceIgnored
	self readInput: 'Name,Ignored Field
 Alan Kay   ,something'.
	self assert: objects first name equals: 'Alan Kay'.