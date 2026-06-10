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
							'fo' , OSPlatform current lineEnding , 'ur'} ])
		equals: 'one,"t,wo","t""hree","fo' , OSPlatform current lineEnding , 'ur"', OSPlatform current lineEnding