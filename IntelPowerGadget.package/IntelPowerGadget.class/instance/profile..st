public
profile: aBlock
	"
	self new profile: [ (Delay forSeconds: 2) wait ] 
	"
	process := OSProcess command: '/Applications/Intel\ Power\ Gadget/PowerLog -duration 10 -verbose > ', self defaultFileName.
	aBlock value.
	process sigint.
	self waitABit.
	self parseFilenamed: self defaultFileName