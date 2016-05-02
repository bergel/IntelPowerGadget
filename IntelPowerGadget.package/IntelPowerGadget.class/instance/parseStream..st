private - logging parsing
parseStream: aStream
	"
	self new parseFile: ('/tmp/power.log' asFileReference readStream) 
	"
	
	(ZnFastLineReader on: aStream) linesDo: [ :line | self processLine: line ].