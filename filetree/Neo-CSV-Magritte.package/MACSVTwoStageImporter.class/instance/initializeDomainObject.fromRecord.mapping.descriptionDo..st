accessing
initializeDomainObject: anObject fromRecord: aDictionary mapping: mapBlock descriptionDo: descriptionBlock
	"Send me only if you want to customize the domain object's Magritte description. Otherwise send one of the similar messages omitting the #descriptionDo: argument because my usage may seem a bit verbose due to creation of MADescriptions by hand, but I provide advantages - like gracefully handling nils. My arguments are as follows:
		anObject - domain object to be initialized
		aDictionary - keys are CSV column names
		mapBlock - use to modify existing descriptions; argument will be an MACSVMappedPragmaBuilder to configure
		descriptionBlock - argument is the container description for anObject, for further configuration e.g. adding an element description"
		
	| contDesc builder |
	builder := MACSVMappedPragmaBuilder new
		fieldNamePropertyKey: self fieldNamePropertyKey;
		fieldReaderPropertyKey: self fieldReaderPropertyKey;
		yourself.
	mapBlock value: builder.
		
	contDesc := builder for: anObject.
	descriptionBlock value: contDesc.
	contDesc do: [ :desc | 
		desc
			propertyAt: self fieldNamePropertyKey
			ifPresent: [ :fieldName | 
				| stringValue value fieldReader |
				stringValue := aDictionary at: fieldName.
				self flag: 'This next part looks very memento-like'.
				stringValue ifNotNil: [ 
					fieldReader := desc 
						propertyAt: self fieldReaderPropertyKey
						ifAbsent: [ desc csvReader ].
					value := fieldReader cull: stringValue cull: desc.
					desc write: value to: anObject ] ] ].
	^ anObject