enumerating
select: filter thenDo: block
	"Execute block for each record that satisfies filter until I am at end."

	self do: [ :record |
		(filter value: record)
			ifTrue: [ block value: record ] ]