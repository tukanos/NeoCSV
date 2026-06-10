convenience
addSymbolFields: count
	"Add a count of consecutive symbol fields"

	count timesRepeat: [ self addSymbolField ]