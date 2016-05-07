public
profileAndGenerateLog: aBlock
	"
	self new profile: [ (Delay forSeconds: 2) wait ] 
	self new profile: [ 40 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	self new profile: [ 150 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	self new profile: [ 1000 timesRepeat: [ Object withAllSubclasses collect: #numberOfMethods ] ]
	
	b := RTMondrian new.
	b nodes: (1 to: 5000).
	b edges connectFrom: [ :v | v // 2 ].
	b layout force.
	self new profile: [b build ]
	
	
	self new profile: [ 3 timesRepeat: [ 100000 factorial ] ]
	
	self new profile: [ 500 timesRepeat: [ Array new: 1000000 ] ]
	
	b := RTMondrianExample new exampleBezierLines.
	b build.
	b view open.
	(Delay forSeconds: 5) wait.
	self new profile: [ (Delay forSeconds: 20) wait ].
	
	"
	process := (OSSUnixSubprocess new
						command: '/Applications/Intel Power Gadget/PowerLog';
						arguments: #('-duration' '10000000' '-verbose');
						redirectStdoutTo: (StandardFileStream forceNewFileNamed: logFilename);
						run).
	duration := aBlock timeToRun.
	process terminate
