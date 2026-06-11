tests
testSubjectDescriptionSubstitution

	writer
		subjectDescription: MACSVTestPerson magritteTemplate birthdateDescription asContainer;
		execute.
		
	self assert: target contents equals: '"DOB"
"1940-05-17"
' withUnixLineEndings.