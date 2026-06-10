convenience
addIgnoredFields: count
	"Add a count of consecutive ignored fields"

	count timesRepeat: [ self addIgnoredField ]