private - logging parsing
parseFile: aFilename
	"
	self new parseFile: ('/tmp/power.log' asFileReference readStream) 
	"
	
	(ZnFastLineReader on: self) linesDo: [ :line | self processLine: line ].