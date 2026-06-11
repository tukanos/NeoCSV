*neo-csv-gemstone-tests
assert: actualNumber closeTo: expectedNumber
  "Tell whether the actualNumber and expectedNumber ARE close to each others with a margin of the default precision"

  self
    assert: actualNumber
    closeTo: expectedNumber
    precision: self defaultComparisonPrecision