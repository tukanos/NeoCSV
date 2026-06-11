Extension { #name : #'NeoCSVWriter' }

{ #category : #'*neo-csv-gemstone-core' }
NeoCSVWriter class >> platformSpecificLineBreak [
    "Protocol: public"
    "'Smalltalk os platformName' is used for compatibility with GS and Squeak
    which don't have the OSPlatform classes, and also instead of the shorter
    'Smalltalk platformName' which doesn't work in all Pharos"

    | platformName |
    platformName := Smalltalk os platformName asLowercase.
    ^ (platformName  includesSubstring: 'linux') | (platformName  includesSubstring: 'unix')
        ifTrue: [ String with: Character lf ]
        ifFalse: [ (platformName beginsWith: 'mac')
            ifTrue: [ String with: Character cr ]
            ifFalse: [  String with: Character cr with: Character lf ] ] "Windows"
]

{ #category : #'*neo-csv-gemstone-core' }
NeoCSVWriter >> initialize [
	"Protocol: initialize-release"
	super initialize.
	lineEnd := self class platformSpecificLineBreak.
	separator := $, .
	fieldWriter := #writeQuotedField: 

]
