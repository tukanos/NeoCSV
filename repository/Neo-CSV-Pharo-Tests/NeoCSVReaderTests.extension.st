Extension { #name : #'NeoCSVReaderTests' }

{ #category : #'*neo-csv-pharo-tests' }
NeoCSVReaderTests >> testReadAsIntegerArrays [
	"Protocol: testing"
	| input |
	input := (String crlf join: #( '100,200,300' '100,200,300' '100,200,300' '')).
	self 
		assert: ((NeoCSVReader on: input readStream) 
					recordClass: IntegerArray;
					addIntegerField;
					addIntegerField ;
					addIntegerField;
					upToEnd)
		equals: {
			#(100 200 300) asIntegerArray.
			#(100 200 300) asIntegerArray.
			#(100 200 300) asIntegerArray }
]
