private
ensureFieldPropertiesForDescription: description from: descriptionSelector 

	self map
		at: descriptionSelector
		ifPresent: [ :anArray | 
			description 
				propertyAt: self fieldNamePropertyKey
				put: anArray first.
			
			anArray second ifNil: [ ^ self ].
			description 
				propertyAt: self fieldReaderPropertyKey
				put: [ :trimmed | 
					anArray second 
						cull: trimmed 
						cull: description ] ].