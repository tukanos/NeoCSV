accessing
prepareStream: aStream
	"Override me e.g. if the input is not proper CSV. One might remove a standard number of header or footer lines, handle blank columns, etc"

	^ aStream