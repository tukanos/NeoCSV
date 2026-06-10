tests
testIgnoreUnknownFields

	| field substitution unknownField |
	field := MACSVTestPerson magritteTemplate birthdateDescription.
	unknownField := MAStringDescription new
		accessor: #unknownSelector;
		csvFieldName: 'Unknown';
		priority: 10;
		yourself.
	substitution := MAContainer withAll: { field. unknownField }.
		
	writer
		subjectDescription: substitution;
		ignoresUnknownFields: true;
		execute.
		
	self assert: target contents equals: '"DOB","Unknown"
"17 May 1940",""
' withUnixLineEndings.