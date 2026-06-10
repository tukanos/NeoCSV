accessing
importStream: aStream
	| rows preparedStream |
	preparedStream := self prepareStream: aStream.
	self configureReaderFor: preparedStream.
	rows := self reader upToEnd.
	^ self convertToDomainObjects: rows