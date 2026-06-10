accessing
readerClass
	^ readerClass ifNil: [ NeoCSVReader ]