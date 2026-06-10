accessing
numberOfColumns
	^ header
		ifNil: [ 
			self data ifNil: [ 0 ] ifNotNil: [ self data first size ] ]
		ifNotNil: [ header size ]