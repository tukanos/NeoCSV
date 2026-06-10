private
writeToStream: aStream
	self subjects isEmptyOrNil ifTrue: [ ^ self ].

	self map do: [ :field | field configureDescriptionFor: self ].

	self fieldDescriptions
		do: [ :field | 
			| converter wrappedConverter |
			converter := field
					propertyAt: self fieldWriterPropertyKey
					ifAbsent: #yourself.
			wrappedConverter := [ :anObject |
				(self ignoresUnknownFields not or: [ field accessor canRead: anObject ])
					ifTrue: [
						| aValue |
						aValue := field read: anObject.
						
						"`#read: returns either a non-nil value or #undefinedValue, so the following test is sufficient e.g. not checking for nil"
						aValue = field undefinedValue ifTrue: [
							aValue := field default ].
							
						converter cull: aValue cull: anObject ]
					ifFalse: [ nil ] ].
			self writer addField: wrappedConverter ].

	writer := self writer on: aStream.

	self includesHeader ifTrue: [ writer writeHeader: self header ].

	writer nextPutAll: self subjects