tests
testDefaultMapping
	writer execute.
	self assert: target contents equals: '"Name","Phone Number","DOB"
"Alan Kay","","17 May 1940"
' withUnixLineEndings.