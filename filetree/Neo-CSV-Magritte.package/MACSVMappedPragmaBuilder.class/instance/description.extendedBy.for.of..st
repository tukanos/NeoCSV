private
description: description extendedBy: descriptionExtensions for: descriptionSelector of: anObject
	| result |
	result := super
		description: description
		extendedBy: descriptionExtensions
		for: descriptionSelector
		of: anObject.

	self ensureFieldPropertiesForDescription: result from: descriptionSelector.

	^ result