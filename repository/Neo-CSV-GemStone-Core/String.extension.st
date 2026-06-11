Extension { #name : #'String' }

{ #category : #'*neo-csv-gemstone-core' }
String >> asDate [
  "For conversion from String to Date to work similarly as in Pharo.
  Example: '1900-01-01 asDate"

  ^ DateAndTime fromString: self

]
