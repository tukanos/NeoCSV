initialize-release
emptyFieldInput: block
	"Set an optional block to test for field input values that should be considered empty.
	The default is nil, equivalent to [ :field | field isEmpty ]."

	emptyFieldInput := block