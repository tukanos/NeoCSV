Extension { #name : #'Number' }

{ #category : #'*neo-csv-gemstone-core' }
Number >> closeTo: num precision: aPrecision [
  "Protocol: Math-Operations"
  "are these two numbers close?"
  num isFloat ifTrue: [ ^ num closeTo: self asFloat precision: aPrecision ].

  ^ [ self = num ] onErrorDo: [ false ]
]
