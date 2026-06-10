accessing
initializeDomainObject: anObject fromRecord: aDictionary mapping: aBlock
	
	^ self
		initializeDomainObject: anObject
		fromRecord: aDictionary
		mapping: aBlock
		descriptionDo: #yourself