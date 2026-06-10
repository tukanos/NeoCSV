convenience
namedColumnsConfiguration
	"Assuming there is a header row that has not yet been read,
	configure the receiver to read each row as a Dictionary where
	each field is stored under a column name.
	Note that each field is read as a string."

	| header |
	self recordClass: Dictionary.
	header := self readHeader.
	self addFieldsAt: (header collect: [ :each | each asSymbol ]).
	^ header