convenience
addIntegerFields: count
	"Add a count of consecutive integer fields"

	count timesRepeat: [ self addIntegerField ]