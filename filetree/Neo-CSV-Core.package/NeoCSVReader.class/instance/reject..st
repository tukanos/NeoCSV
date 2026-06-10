enumerating
reject: filter
	"Read and collect records that do not satisfy filter into an Array until there are none left.
	Return the array."

	^ Array streamContents: [ :stream | 
		self 
			reject: filter 
			thenDo: [ :each | stream nextPut: each ] ]