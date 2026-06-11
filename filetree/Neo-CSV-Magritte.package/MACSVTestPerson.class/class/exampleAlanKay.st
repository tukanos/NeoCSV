accessing
exampleAlanKay

	^ self new
		name: 'Alan Kay';
		birthdate: (Date year: 1940 month: 5 day: 17) yyyymmdd; "ISO 8601 format"
		birthplace: 'Springfield, Massachusetts, U.S.';
		wikipediaUrl: 'https://en.wikipedia.org/wiki/Alan_Kay' asUrl
		yourself