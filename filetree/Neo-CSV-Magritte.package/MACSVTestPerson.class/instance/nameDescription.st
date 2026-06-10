magritte-accessing
nameDescription
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		csvFieldName: 'Name';
		priority: 10;
		yourself