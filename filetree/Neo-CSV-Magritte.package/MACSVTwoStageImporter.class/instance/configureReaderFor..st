accessing
configureReaderFor: aStream
	
	super configureReaderFor: aStream.
	self reader recordClass: Dictionary.
	
	self reader
		emptyFieldValue: #passNil;
		addFieldsAt: (self columnNames collect: [ :each | each asSymbol ]) "Adapted from NeoCSVReader>>#namedColumnsConfiguration"