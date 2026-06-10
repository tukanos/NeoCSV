accessing
map: aString fieldSource: aBlock

	self
		map: aString 
		fieldDo: [ :field | field descriptionSource: aBlock ]