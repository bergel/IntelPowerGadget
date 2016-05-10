public
run
	2 timesRepeat: [ Smalltalk garbageCollect ].
	Object new; new; new.
	2 timesRepeat: [ Smalltalk garbageCollect ].

	(Delay forSeconds: self waitBeforeExecution) wait.
	 IntelPowerGadget new
		logFilename: self logFileName;
		profileAndGenerateLog: [ self execute ]