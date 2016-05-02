initialization
initializeParsingDictionaryCache
	parsingDictionaryCache := {('GT Frq' -> #gtFrequency:).
	('Logging...GT Frq' -> #gtFrequency:).
	('CPU Frequency Frq' -> #cpuFrequency:).
	('Processor power (W)' -> #processorPower:).
	('Processor energy (J)' -> #processorEnergyJ:).
	('Processor energy (mWh)' -> #processorEnergymWH:).
	('IA power (W)' -> #iaPowerW:).
	('IA energy (J)' -> #iaEnergyJ:).
	('IA energy (mWh)' -> #iaEnergymWh:).
	('Package temperature (C)' -> #packageTemperatureC:).
	('Package Hot' -> #packageHot:).
	('Package power limit (W)' -> #packagePowerLimit:)} asDictionary