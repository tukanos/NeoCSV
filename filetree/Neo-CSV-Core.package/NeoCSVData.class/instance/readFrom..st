reading
readFrom: characterReadStream
	| reader |
	reader := NeoCSVReader on: characterReadStream.
	self hasHeader
		ifTrue: [ reader fieldCount: header size ]
		ifFalse: [ self header: reader readHeader ].
	self hasTypes
		ifTrue: [ 
			self types do: [ :type |
				reader addFieldConverter: (self class typesMap at: type) ] ].
	self data: reader upToEnd