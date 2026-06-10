accessing
execute
	^ self source isStream
		ifTrue: [ self importStream: self source ]
		ifFalse: [ self source readStreamDo: [ :str | self importStream: str ] ]