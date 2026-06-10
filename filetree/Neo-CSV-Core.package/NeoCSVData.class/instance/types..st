accessing
types: collectionOfTypeSymbols
	self assert: (collectionOfTypeSymbols asSet \ self class typesMap keys) isEmpty.
	types := collectionOfTypeSymbols