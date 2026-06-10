testing
testSimple
	self
		assert: (String streamContents: [ :stream |
					(NeoCSVWriter on: stream)
						nextPut: #(one two three);
						nextPutAll: #( (1 2 3) (4 5 6) (7 8 9)) ])
		equals: (OSPlatform current lineEnding join: #( '"one","two","three"' '"1","2","3"' '"4","5","6"' '"7","8","9"' ''))