accessing - computed
currentEntry
	self numberOfLogEntries = 0 ifTrue: [ self createLogEntry ].
	^ logEntries last