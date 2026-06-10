*neo-csv-pharo-core
initialize
	"Protocol: initialize-release"
	super initialize.
	lineEnd := OSPlatform current lineEnding.
	separator := $, .
	fieldWriter := #writeQuotedField: 
