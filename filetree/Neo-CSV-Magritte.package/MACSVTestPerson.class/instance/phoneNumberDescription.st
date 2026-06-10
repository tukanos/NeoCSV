magritte-accessing
phoneNumberDescription
	<magritteDescription>
	^ MANumberDescription new
		accessor: #phoneNumber;
		csvFieldName: 'Phone Number';
		priority: 20;
		csvReader: [ :s | (s select: #isDigit) asNumber ];
		yourself