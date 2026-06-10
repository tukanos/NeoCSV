accessing
initializeDomainObject: anObject fromRecord: aDictionary
	"We needed an instance-side version because some objects may need configuration during instance creation"
	
	^ self 
		initializeDomainObject: anObject 
		fromRecord: aDictionary 
		mapping: [ :builder | ]