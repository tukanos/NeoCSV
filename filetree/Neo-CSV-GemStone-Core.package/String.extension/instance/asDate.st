*neo-csv-gemstone-core
asDate
  "For conversion from String to Date to work similarly as in Pharo.
  Example: '1900-01-01 asDate"

  ^ DateAndTime fromString: self
