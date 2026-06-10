accessing
numberOfRows
	^ data ifNil: [ 0 ] ifNotNil: [ data size ]