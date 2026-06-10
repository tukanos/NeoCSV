writing
writeOn: characterWriteStream
	| writer |
	self data isEmptyOrNil ifTrue: [ ^ self ].
	writer := NeoCSVWriter on: characterWriteStream.
	self data first isDictionary
		ifTrue: [
			writer namedColumnsConfiguration: self header ]
		ifFalse: [
			self header ifNotNil: [ writer writeHeader: self header ] ].
	writer nextPutAll: self data