Extension { #name : #'TestAsserter' }

{ #category : #'*neo-csv-gemstone-tests' }
TestAsserter >> assert: actualNumber closeTo: expectedNumber [
  "Tell whether the actualNumber and expectedNumber ARE close to each others with a margin of the default precision"

  ^ self
      assert: actualNumber
      closeTo: expectedNumber
      precision: self defaultComparisonPrecision
]

{ #category : #'*neo-csv-gemstone-tests' }
TestAsserter >> assert: actualNumber closeTo: expectedNumber precision: epsilon [
  "Tell whether the actualNumber and expectedNumber ARE close to each others with a margin of epsilon."
  ^ self
      assert: (actualNumber closeTo: expectedNumber precision: epsilon)
      description: [ self comparingStringBetween: actualNumber and: expectedNumber ]
]