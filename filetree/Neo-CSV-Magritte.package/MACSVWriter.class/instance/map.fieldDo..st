accessing
map: aString fieldDo: aBlock

	| field |
	field := MACSVField new
		name: aString;
		yourself.
		
	aBlock value: field.
	
	self map add: field.