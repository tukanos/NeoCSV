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
"Alan Kay","","https://en.wikipedia.org/wiki/Alan_Kay","17 May 1940"
' withUnixLineEndings.