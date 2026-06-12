Extension { #name : #'Float' }

{ #category : #'*neo-csv-gemstone-core' }
Float class >> defaultComparisonPrecision [
  "Protocol: contants"
  "Default precision used for comparing two float numbers"

  ^ 0.0001
]

{ #category : #'*neo-csv-gemstone-core' }
Float >> closeTo: num precision: aPrecision [
  "Protocol: Math-Operations"
  "Tell whether the receiver and arguments are close from each other given a precision"
  num isNumber ifFalse: [ ^ false ].

  ^ self = num asFloat or: [ (self - num) abs <= aPrecision ]
]
