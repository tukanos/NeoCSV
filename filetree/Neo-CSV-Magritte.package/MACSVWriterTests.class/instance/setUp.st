running
setUp
	person :=  MACSVTestPerson exampleAlanKay.
	target := FileSystem memory / 'people.csv'.
	writer := MACSVWriter new
		target: target;
		subjects: { person };
		yourself