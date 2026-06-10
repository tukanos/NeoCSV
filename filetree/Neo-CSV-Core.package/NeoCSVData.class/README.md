I am NeoCSVData, representing the data of a CSV file.

I hold an optional header and a collection of records with the same fields.

I am a convenience object.

You can create an instance of me by reading me from a stream (NeoCSVData class>>readFrom:).
You can write me to a stream (NeoCSVData>>writeTo:).

Note that I assume my records are indexable collections, not dictionaries.

No field conversions are done, all fields remain strings.

Using NeoCSVReader and NeoCSVWriter directly gives you much more options.

I can also be used by construction from a collection (NeoCSVData class>>with:) with the header being set manually.