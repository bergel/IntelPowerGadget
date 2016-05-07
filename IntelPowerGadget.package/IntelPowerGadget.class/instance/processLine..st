private - logging parsing
processLine: aLine
	| indexOfEqual beforeEquals afterEquals selector |
	(aLine beginsWith: '---') ifTrue: [ self createLogEntry. ^ self ].
	aLine = 'Done' ifTrue: [ ^ self ].
	
	indexOfEqual := aLine indexOf: $=.
	indexOfEqual = 0 ifTrue: [ ^ self ].
	beforeEquals := aLine copyFrom: 1 to: indexOfEqual - 1.
	afterEquals := aLine copyFrom: indexOfEqual + 1 to: aLine size.
	afterEquals trimBoth ifEmpty: [ ^ self ].
	selector:= parsingDictionaryCache at: beforeEquals trimBoth ifAbsent: [ ^ self ].
	self currentEntry perform: selector with: (Float readFrom: afterEquals trimBoth)