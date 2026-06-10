tests
testSubjectDescriptionSubstitution

	writer
		subjectDescription: MACSVTestPerson magritteTemplate birthdateDescription asContainer;
		execute.
		
	self assert: target contents equals: '"DOB"
"17 May 1940"
' withUnixLineEndings.