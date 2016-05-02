private - logging parsing
parseFilenamed: aFileNamed
	"
	self new parseDefaultFilename
	"
	self parseStream: aFileNamed asFileReference readStream