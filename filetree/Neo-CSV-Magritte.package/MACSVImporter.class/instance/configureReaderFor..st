private
configureReaderFor: aStream
	self reader on: aStream.
	self columnNames ifNil: [ self columnNames: self readHeader ].
	self reader recordClass: self recordClass.