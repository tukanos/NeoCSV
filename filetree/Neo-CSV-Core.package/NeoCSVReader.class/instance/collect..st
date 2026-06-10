enumerating
collect: block
	"Execute block for each record until I am at end, returning the results in an Array"
	
	^ Array streamContents: [ :out |
			[ self atEnd ]
				whileFalse: [ 
					out nextPut: (block value: self next) ] ]