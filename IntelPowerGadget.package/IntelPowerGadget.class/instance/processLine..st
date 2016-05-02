private - logging parsing
processLine: aLine
	| indexOfEqual beforeEquals afterEquals selector |
	(aLine beginsWith: '---') ifTrue: [ self createLogEntry. ^ self ].
	aLine = 'Done' ifTrue: [ ^ self ].
	
	indexOfEqual := aLine indexOf: $=.
	beforeEquals := aLine copyFrom: 1 to: indexOfEqual - 1.
	afterEquals := aLine copyFrom: indexOfEqual + 1 to: aLine size.
	selector:= parsingDictionaryCache at: beforeEquals trimBoth ifAbsent: [ ^ self ].
	self currentEntry perform: selector with: (Float readFrom: afterEquals trimBoth)