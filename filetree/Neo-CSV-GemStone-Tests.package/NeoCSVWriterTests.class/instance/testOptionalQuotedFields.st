testing
testOptionalQuotedFields
	self
		assert:
			(String
				streamContents: [ :stream | 
					(NeoCSVWriter on: stream)
						fieldWriter: #optionalQuoted;
						nextPut:
							{'one'.
							't,wo'.
							't"hree'.
							'fo' , NeoCSVWriter platformSpecificLineBreak , 'ur'} ])
		equals: 'one,"t,wo","t""hree","fo' , NeoCSVWriter platformSpecificLineBreak , 'ur"', NeoCSVWriter platformSpecificLineBreak