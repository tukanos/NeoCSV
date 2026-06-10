accessing
execute
	^ self target isStream
		ifTrue: [ self writeToStream: self target ]
		ifFalse: [ self target ensureCreateFile writeStreamDo: [ :str | self writeToStream: str ] ]