magritte-accessing
birthdateDescription
	<magritteDescription>
	^ MADateDescription new
		accessor: #birthdate;
		csvFieldName: 'DOB';
		priority: 30;
		yourself