tests
testParseText

	p parseText: self shortScript.
	self assert: p numberOfLogEntries equals: 3