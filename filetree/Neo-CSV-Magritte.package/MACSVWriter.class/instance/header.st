private
header
	^ self fieldDescriptions children
		collect: [ :field | field propertyAt: self fieldNamePropertyKey ifAbsent: [ field name ] ]