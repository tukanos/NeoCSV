tests
testUnknownFields

	| unknownField |
	unknownField := MAStringDescription new
		accessor: #unknownSelector;
		csvFieldName: 'Unknown';
		priority: 10;
		yourself.
		
	self 
		should: [ 
			writer
				subjectDescription: unknownField asContainer;
				execute ] 
		raise: MessageNotUnderstood.