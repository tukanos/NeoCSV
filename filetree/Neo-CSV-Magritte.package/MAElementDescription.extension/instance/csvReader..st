*Neo-CSV-Magritte
csvReader: aBlock
	"
	aBlock 
		- 1st argument - the input string
		- 2nd (optional) argument - this description
		- return value - a value appropriate to the field e.g. aDate for MADateDescription."
	^ self propertyAt: #csvReader put: aBlock