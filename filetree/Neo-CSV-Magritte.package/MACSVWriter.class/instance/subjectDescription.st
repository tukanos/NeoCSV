accessing
subjectDescription
	^ subjectDescription ifNil: [ subjectDescription := self subjects atRandom magritteDescription ]