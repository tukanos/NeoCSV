*neo-csv-gemstone-core
closeTo: num precision: aPrecision
  "Protocol: Math-Operations"
  "are these two numbers close?"
  num isFloat ifTrue: [ ^ num closeTo: self asFloat precision: aPrecision ].

  ^ [ self = num ] onErrorDo: [ false ]