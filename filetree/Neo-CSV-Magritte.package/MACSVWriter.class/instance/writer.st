accessing
writer
	^ writer ifNil: [ writer := self writerClass new ]