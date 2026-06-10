accessing
typeForColumnNamed: columnName
	self hasHeader ifFalse: [ ^ #string ].
	^ self typeForColumnAt: (self header indexOf: columnName)