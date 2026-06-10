private - reading
readField
	| field |
	field := self peekQuote
		ifTrue: [ self readQuotedField ]
		ifFalse: [ self readUnquotedField ].
	(field ~= emptyFieldValue and: [ emptyFieldInput notNil ]) ifTrue: [ 
		(emptyFieldInput value: field)
			ifTrue: [ ^ emptyFieldValue ] ].
	^ field