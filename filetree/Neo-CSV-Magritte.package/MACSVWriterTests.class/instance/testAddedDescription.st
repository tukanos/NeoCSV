tests
testAddedDescription

	writer
		map: 'Wikipedia' fieldDo: [ :field | 
			field descriptionSource: [ 
				MAUrlDescription new
					accessor: #wikipediaUrl;
					priority: 25;
					yourself ] ];
		execute.
		
	self assert: target contents equals: '"Name","Phone Number","Wikipedia","DOB"
"Alan Kay","","https://en.wikipedia.org/wiki/Alan_Kay","1940-05-17"
' withUnixLineEndings.