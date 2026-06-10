*Neo-CSV-Magritte
csvReader

	^ self propertyAt: #csvReader ifAbsent: [ self defaultCsvReader ]