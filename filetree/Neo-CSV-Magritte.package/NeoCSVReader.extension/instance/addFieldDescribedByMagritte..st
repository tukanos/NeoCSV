*Neo-CSV-Magritte
addFieldDescribedByMagritte: aDescription 

	self 
		addField: [ :obj :value | aDescription accessor write: value to: obj ] 
		converter: [ :s | 
			s trimmed
				ifNotEmpty: aDescription csvReader
				ifEmpty: [ aDescription undefinedValue ] ] 