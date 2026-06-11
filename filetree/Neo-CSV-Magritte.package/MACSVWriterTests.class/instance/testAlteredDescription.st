tests
testAlteredDescription

	writer
		map: 'Birthplace String' fieldDo: [ :field | 
			field descriptionSource: #birthplaceDescription ];
		execute.
		
	self assert: target contents equals: '"Name","Phone Number","DOB","Birthplace String"
"Alan Kay","","1940-05-17","Springfield, Massachusetts, U.S."
' withUnixLineEndings.