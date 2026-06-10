testing
testWideOptionalQuoted
	"Testing with Euro character"
	self
		assert: (String streamContents: [ :out |
			(NeoCSVWriter on: out)
				fieldWriter: #optionalQuoted;
				nextPut: { 1. 'foo "1" ', (Character codePoint: 8364) asString. true} ])
		equals: ('1,"foo ""1"" ', (Character codePoint: 8364) asString, '",true', NeoCSVWriter platformSpecificLineBreak)