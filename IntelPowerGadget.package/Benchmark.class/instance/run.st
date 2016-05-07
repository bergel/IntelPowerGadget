public
run
	(Delay forSeconds: self waitBeforeExecution) wait.
	 IntelPowerGadget new
		logFilename: self logFileName;
		profileAndGenerateLog: [ self execute ]