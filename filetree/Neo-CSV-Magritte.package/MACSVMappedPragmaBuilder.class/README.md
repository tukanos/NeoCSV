I provide a way to extend Magritte element descriptions for CSV reading without modifying the containing domain class. I help avoid bloating domain classes with extensions for each supported CSV source. For example, for contacts, Google has its field names, Outlook has others…  By using me, you will not have to extend existing element descriptions via Magritte's pragma (the one that takes the description selector as an argument).

To configure me, you should:
- set the `#fieldNamePropertyKey` that your reader expects to map descriptions to CSV fields
- as needed, specify the `#fieldReaderPropertyKey` that your reader uses to convert the CSV field string to a domain object; otherwise the default reader will be used

The two primary ways to map fields to descriptions are:
-  `aBuilder map: fieldName fieldTo: descriptionSelector`
-  `aBuilder map: fieldName fieldTo: descriptionSelector using: reader`