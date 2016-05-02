tests
testParseText

	| entry |
	p parseText: self shortScript.
	self assert: p numberOfLogEntries equals: 4.
	
	entry := p logEntries first.
	self assert: entry cpuFrequency equals: 1600