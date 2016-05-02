public
profile: aBlock
	"
	self new profile: [ (Delay forSeconds: 2) wait ] 
	"
	process := OSProcess command: '/Applications/Intel\ Power\ Gadget/PowerLog -duration 10 -verbose > /tmp/power.log'.
	aBlock value.
	process sigint