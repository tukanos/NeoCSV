Sometimes, you just can't fully create your domain objects from CSV in one pass. For example:
- Multiple rows combine into one object (`inject:into:` can be helpful here)
- Multiple cells combine into one object field

To handle such a case, subclass me and, at minimum, override `#domainObjectFromDictionary:`. See its comment for more info. Implementations of that method often utilize my `#initializeDomainObject:fromRecord:` helper method.

##Combining Multiple Cells into One Field
Typically, you would override `domainObjectFromDictionary:`, do a super send, and then 
Ideally, you would have a domain value object whose state is represented by these fields. If so, a common pattern is to  and pass this object to `` like so:
```smalltalk
	result := super domainObjectFromDictionary: aDictionary.
	
	aValueObject := self 
		initializeDomainObject: MyValueObject new 
		fromRecord: aDictionary.
		
	^ result
		fooBar: aValueObject;
		yourself
```

If the object can't be created anew - say it lives in a registry - you can always just pull