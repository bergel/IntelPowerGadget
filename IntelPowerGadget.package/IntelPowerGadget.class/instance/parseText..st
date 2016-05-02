as yet unclassified
parseText: aString
	"
	self new parseText: ('/tmp/power.log' asFileReference readStream) 
	"
	
	self parseStream: aString readStream
