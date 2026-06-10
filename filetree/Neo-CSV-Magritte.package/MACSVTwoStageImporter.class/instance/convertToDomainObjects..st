accessing
convertToDomainObjects: aCollectionOfDictionaries
	"aCollectionOfDictionaries - the result of a naive processing of CSV
	Return - a collection of domain objects"
	
	^ aCollectionOfDictionaries
		inject: OrderedCollection new 
		into: [ :col :rowDict | 
			| result |
			self preprocessor value: rowDict.
			(self selectBlock value: rowDict)
				ifTrue: [ 
					result := self domainObjectFromDictionary: rowDict.
					self prepareRecord: result.
					col add: result ].
			col ]