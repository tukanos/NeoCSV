tests
testDefaultMapping
	writer execute.
	self assert: target contents equals: '"Name","Phone Number","DOB"
"Alan Kay","","1940-05-17"
' withUnixLineEndings.