Extension { #name : #'NeoCSVWriter' }

{ #category : #'*neo-csv-pharo-core' }
NeoCSVWriter >> initialize [
	"Protocol: initialize-release"
	super initialize.
	lineEnd := OSPlatform current lineEnding.
	separator := $, .
	fieldWriter := #writeQuotedField:

]
