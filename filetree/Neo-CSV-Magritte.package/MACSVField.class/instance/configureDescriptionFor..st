accessing
configureDescriptionFor: aWriter

	| description |
	self descriptionSource isSymbol ifTrue: [
		description := aWriter subjectDescription detect: [ :fieldDesc | 
			fieldDesc definingContext methodSelector = self descriptionSource ] ].
		
	self descriptionSource isBlock ifTrue: [
		description := self descriptionSource value.
		aWriter subjectDescription add: description ].
		
	description 
		propertyAt: aWriter fieldNamePropertyKey
		put: self name.
			
	self encoder ifNotNil: [ :anEncoder |
		description 
			propertyAt: aWriter fieldWriterPropertyKey
			put: anEncoder ].
			
	self decoder ifNotNil: [ :aDecoder |
		description 
			propertyAt: aWriter fieldWriterPropertyKey
			put: aDecoder ].
			
	^ description