*Neo-CSV-GT
gtViewDataFOr: composite
	<gtView>
	| columnedList |
	self data ifNil: [ ^ composite empty ].
	self headerForPresentation ifNil: [ ^ composite empty ].
	columnedList := composite columnedList
		title: 'Data';
		items: [ self data ];
		priority: 35.
	columnedList column: 'nr' text: [ :_ :nr | nr asRopedText foreground: Color gray ] weight: 1.
	self headerForPresentation doWithIndex: [ :column :index | 
		columnedList column: column do: [ :aColumn | 
			aColumn
				item: [ :eachRow | 
					eachRow isDictionary
						ifTrue: [ eachRow at: column ifAbsent: nil ]
						ifFalse: [ eachRow at: index ] ];
				weight: 1 ] ].
	^ columnedList