accessing
headerForPresentation
	^ self header
		ifNil: [ self data ifNotNil: [ (1 to: self data first size) collect: #asString ] ]