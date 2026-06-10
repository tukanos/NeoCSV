accessing
typesMap
	^ {
		#string -> [ :string | string ].
		#number -> [ :string | NeoNumberParser parse: string ].
		#timestamp -> [ :string | DateAndTime fromString: string ].
		#boolean -> [ :string | #(true t yes y '1') includes: string asLowercase ]
	} asDictionary