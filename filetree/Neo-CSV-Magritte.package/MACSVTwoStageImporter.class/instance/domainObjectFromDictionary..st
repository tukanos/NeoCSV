accessing
domainObjectFromDictionary: aDictionary

	^ self 
		initializeDomainObject: self recordClass new 
		fromRecord: aDictionary