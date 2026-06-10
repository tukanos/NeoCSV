testing
testEnumerating
	| numbers csv |
	numbers := (1 to: 10) collect: [ :each | { each asString. each asWords } ].
	csv := String cr join: (numbers collect: [ :each | $, join: each ]).
	self 
		assert: ((NeoCSVReader on: csv readStream) collect: [ :each | each ]) 
		equals: numbers.
	self
		assert: ((NeoCSVReader on: csv readStream) 
							addIntegerField; addField; 
							select: [ :each | each first even ])
		equals: ((NeoCSVReader on: csv readStream)
							addIntegerField; addField; 
							reject: [ :each | each first odd ])