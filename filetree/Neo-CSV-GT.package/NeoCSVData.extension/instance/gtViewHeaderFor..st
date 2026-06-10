*Neo-CSV-GT
gtViewHeaderFor: composite
	<gtView>
	self header ifNil: [ ^ composite empty ].
	^ composite columnedList
		title: 'Header';
		priority: 30;
		items: [ self header ];
		column: 'Position' text: [ :_ :position | position ];
		column: 'Field' text: #yourself weight: 2;
		column: 'Type' text: [ :_ :position | self typeForColumnAt: position ]