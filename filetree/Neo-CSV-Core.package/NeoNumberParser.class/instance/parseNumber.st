parsing
parseNumber
	| negated number isFloat |
	negated := stream peekFor: $-.
	number := self parseNumberInteger.
	isFloat := (stream peekFor: radixPoint)
		ifTrue: [ number := number + self parseNumberFraction. true ]
		ifFalse: [ false ].
	((stream peekFor: $e) or: [ stream peekFor: $E ])
		ifTrue: [ number := number * self parseNumberExponent ].
	isFloat ifTrue: [ number := number asFloat ].
	negated
		ifTrue: [ number := number negated ].
	^ number