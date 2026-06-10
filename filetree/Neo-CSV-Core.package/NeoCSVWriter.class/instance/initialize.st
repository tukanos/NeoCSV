initialize-release
initialize 
	super initialize.
	lineEnd := OSPlatform current lineEnding.
	separator := $, .
	fieldWriter := #writeQuotedField: 
