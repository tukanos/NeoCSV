enumerating
reject: filter thenDo: block
	"Execute block for each record that does not satisfy filter until I am at end."

	self do: [ :record |
		(filter value: record)
			ifFalse: [ block value: record ] ]