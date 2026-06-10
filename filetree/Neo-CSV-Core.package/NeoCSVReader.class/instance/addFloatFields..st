convenience
addFloatFields: count
	"Add a count of consecutive float fields"

	count timesRepeat: [ self addFloatField ]