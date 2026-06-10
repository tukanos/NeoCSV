tests
testAlteredDescription

	writer
		map: 'Birthplace String' fieldDo: [ :field | 
			field descriptionSource: #birthplaceDescription ];
		execute.
		
	self assert: target contents equals: '"Name","Phone Number","DOB","Birthplace String"
"Alan Kay","","17 May 1940","Springfield, Massachusetts, U.S."
' withUnixLineEndings.