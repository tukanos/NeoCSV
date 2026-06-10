testing
testEmptyFieldInput
	self 
		assert: ((NeoCSVReader on: 'one,NULL,two\NULL,NULL,three\NULL,NULL,NULL' withCRs readStream)
						 emptyFieldInput: [ :field | field = 'NULL' ]; upToEnd)
		equals: #((one nil two) (nil nil three) (nil nil nil)).
	self 
		assert: ((NeoCSVReader on: 'one,NULL,two\NULL,NULL,three\NULL,NULL,NULL' withCRs readStream)
						 emptyFieldInput: [ :field | field = 'NULL' ]; emptyFieldValue: #empty; upToEnd)
		equals: #((one empty two) (empty empty three) (empty empty empty)).
	self 
		assert: ((NeoCSVReader on: 'one, NULL,two\" NULL","NULL ","three"\NULL,NULL,NULL' withCRs readStream)
						 emptyFieldInput: [ :field | field trimBoth asLowercase = #null ]; emptyFieldValue: #empty; upToEnd)
		equals: #((one empty two) (empty empty three) (empty empty empty)).
	self 
		assert: ((NeoCSVReader on: 'one,NULL,two\"nil","NULL","three"\nil,NULL,nil' withCRs readStream)
						 emptyFieldInput: [ :field | #('NULL' 'nil') includes: field ]; emptyFieldValue: #empty; upToEnd)
		equals: #((one empty two) (empty empty three) (empty empty empty)).
	self 
		assert: ((NeoCSVReader on: 'one,,two\,,three\,,' withCRs readStream)
						 emptyFieldInput: [ :field | field isEmpty ]; upToEnd)
		equals: #((one nil two) (nil nil three) (nil nil nil)).
