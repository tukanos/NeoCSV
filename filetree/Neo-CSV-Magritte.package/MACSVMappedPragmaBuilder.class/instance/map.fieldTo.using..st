accessing
map: fieldName fieldTo: descriptionSelector using: reader
	"
	descriptionSelector - returning the description to be used
	reader - typically a block, where arguments are: 
	  1) the field string input and 
	  2) the description
	  
	A typical pattern is to customize the description and then use the default reader with something like this:
		`desc defaultCsvReader cull: input trimmed`"

	 self map at: descriptionSelector put: { fieldName. reader }