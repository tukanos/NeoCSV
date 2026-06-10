convenience
addPlainFields: count
	"Add a count of consecutive plain, pass through, string fields"

	count timesRepeat: [ self addPlainField ]