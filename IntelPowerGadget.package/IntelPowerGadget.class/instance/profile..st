public
profile: aBlock
	"
	self new profile: [ (Delay forSeconds: 2) wait ] 
	self new profile: [ 40 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	self new profile: [ 150 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	self new profile: [ 1000 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	"
	process := (OSSUnixSubprocess new
						command: '/Applications/Intel Power Gadget/PowerLog';
						arguments: #('-duration' '100000' '-verbose');
						redirectStdoutTo: (StandardFileStream forceNewFileNamed: self defaultFileName);
						run).
	duration := aBlock timeToRun.
	process terminate.
	self waitABit.
	self parseFilenamed: self defaultFileName
	
	"USING OSPROCESS -- buggy code--"
"	process := OSProcess command: '/Applications/Intel\ Power\ Gadget/PowerLog -duration 500 -verbose > ', self defaultFileName.
	duration := aBlock timeToRun.
	process sigquit.
	process terminate.
	self waitABit.
	 
	self parseFilenamed: self defaultFileName"