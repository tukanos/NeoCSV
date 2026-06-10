reading
readAsDictionariesFrom: characterReadStream
	| reader |
	reader := NeoCSVReader on: characterReadStream.
	reader recordClass: Dictionary.
	self hasHeader
		ifTrue: [ reader fieldCount: header size ]
		ifFalse: [ self header: reader readHeader ].
	self hasTypes
		ifTrue: [ 
			self types with: self header do: [ :type :column |
				reader addFieldAt: column converter: (self class typesMap at: type) ] ].
	self data: reader upToEnd