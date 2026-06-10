accessing
typeForColumnAt: index
	self hasTypes ifFalse: [ ^ #string ].
	^ self types at: index