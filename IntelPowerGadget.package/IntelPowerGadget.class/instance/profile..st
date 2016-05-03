public
profile: aBlock
	"
	self new profile: [ (Delay forSeconds: 2) wait ] 
	self new profile: [ 20 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	self new profile: [ 1000 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	"
	process := OSProcess command: '/Applications/Intel\ Power\ Gadget/PowerLog -duration 500 -verbose > ', self defaultFileName.
	duration := aBlock timeToRun.
	process sigquit.
	process terminate.
	self waitABit.
	 
	self parseFilenamed: self defaultFileName