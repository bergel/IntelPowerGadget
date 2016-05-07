initialization
initialize
	super initialize.
	logEntries := OrderedCollection new.
	self initializeParsingDictionaryCache.
	logFilename := self defaultFileName.