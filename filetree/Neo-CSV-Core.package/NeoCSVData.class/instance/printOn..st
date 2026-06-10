printing
printOn: stream
	super printOn: stream.
	stream 
		nextPut: $(;
		print: self numberOfRows;
		space;
		nextPutAll: 'row'.
	self numberOfRows = 1 ifFalse: [ stream nextPut: $s ].
	stream
		space;
		nextPut: $x;
		space;
		print: self numberOfColumns;
		space;
		nextPutAll: 'column'.
	self numberOfColumns = 1 ifFalse: [ stream nextPut: $s ].
	stream
		nextPut: $)