private
fieldDescriptions
	^ self subjectDescription
		select: [ :desc | desc hasProperty: self fieldNamePropertyKey ]