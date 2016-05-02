tests
testBasic

	| p |
	p := IntelPowerGadget new.
	self assert: p numberOfLogEntries equals: 0.
	p createLogEntry.
	self assert: p numberOfLogEntries equals: 1