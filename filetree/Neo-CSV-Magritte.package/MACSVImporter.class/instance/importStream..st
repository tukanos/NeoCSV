private
importStream: aStream
	| fields |
	self configureReaderFor: aStream.
	
	fields := self recordMagritteDescription children.
	self columnNames
		do: [ :h | 
			fields
				detect: [ :f | 
					f
						propertyAt: self fieldNamePropertyKey
						ifPresent: [ :fieldName | fieldName = h asString trimmed ]
						ifAbsent: [ false ] ]
				ifFound: [ :e | 
					self flag: 'need a way to customize the reader here'.
					self reader addFieldDescribedByMagritte: e ]
				ifNone: [ self reader addIgnoredField ] ].
	^ self reader upToEnd "or do more processing e.g. `select: [ :record | record lastName isNotNil ]`"