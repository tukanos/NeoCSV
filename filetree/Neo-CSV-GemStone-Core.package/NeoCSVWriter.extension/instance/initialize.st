*neo-csv-gemstone-core
initialize
	"Protocol: initialize-release"
	super initialize.
	lineEnd := self class platformSpecificLineBreak.
	separator := $, .
	fieldWriter := #writeQuotedField: 
