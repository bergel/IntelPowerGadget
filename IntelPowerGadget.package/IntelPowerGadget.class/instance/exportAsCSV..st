public
exportAsCSV: aFullFileName
	"Export the current data as a CSV file"
	| fr stream |
	fr := aFullFileName asFileReference.
	self assert: [ fr extension = 'csv' ] description: 'Should have a .csv file extension'.
	self assert: [ fr exists not ] description: 'File already exist. Proceed to override'.
	fr exists ifTrue: [ fr delete ].
	stream := fr writeStream.
	
	stream nextPutAll: 'id,'.
	LogEntry instVarNames sorted do: [ :varName | stream nextPutAll: varName ] separatedBy: [ stream nextPut: $, ].
	stream lf.
	self logEntries doWithIndex: [ :entry :index |
		stream nextPutAll: index asString.
		stream nextPut: $,.
		LogEntry instVarNames sorted do: [ :varName | stream nextPutAll: (entry instVarNamed: varName) asString ] separatedBy: [ stream nextPut: $, ].
		stream lf
	].
	stream close