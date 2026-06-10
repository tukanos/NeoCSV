testing
testWriteHeader
	| header |
	header := String streamContents: [ :out |
		(NeoCSVWriter on: out)
			writeHeader: #(foo bar) ].
	self assert: header equals: '"foo","bar"', OSPlatform current lineEnding