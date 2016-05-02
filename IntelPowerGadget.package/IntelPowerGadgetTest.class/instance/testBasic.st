tests
testBasic

	self assert: p numberOfLogEntries equals: 0.
	p createLogEntry.
	self assert: p numberOfLogEntries equals: 1