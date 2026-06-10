accessing
reader
	^ reader ifNil: [ reader := self readerClass new ]