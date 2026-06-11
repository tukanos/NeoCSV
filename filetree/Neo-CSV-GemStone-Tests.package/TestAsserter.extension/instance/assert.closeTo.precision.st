*neo-csv-gemstone-tests
  "Tell whether the actualNumber and expectedNumber ARE close to each others with a margin of epsilon."

  self
    assert: (actualNumber closeTo: expectedNumber precision: epsilon)
    description: [ self comparingStringBetween: actualNumber and: expectedNumber ]