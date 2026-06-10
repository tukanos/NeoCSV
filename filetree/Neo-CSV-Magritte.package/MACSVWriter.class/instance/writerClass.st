accessing
writerClass
	^ writerClass ifNil: [ NeoCSVWriter ]