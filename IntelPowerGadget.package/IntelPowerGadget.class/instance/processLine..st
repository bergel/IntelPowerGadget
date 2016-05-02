as yet unclassified
processLine: aLine
	| d indexOfEqual beforeEquals afterEquals selector |
	(aLine beginsWith: '---') ifTrue: [ self createLogEntry. ^ self ].
	
	d := {
	'GT Frq' -> #gtFrequency: .
	'Logging...GT Frq' -> #gtFrequency: .
	'CPU Frequency Frq' -> #cpuFrequency: .
	'Processor power (W)' -> #processorPower: .
	'Processor energy (J)' -> #processorEnergyJ: .
	'Processor energy (mWh)' -> #processorEnergymWH: .
	'IA power (W)' -> #iaPowerW: .
	'IA energy (J)' -> #iaEnergyJ: .
	'IA energy (mWh)' -> #iaEnergymWh: .
	'Package temperature (C)' -> #packageTemperatureC: .
	'Package Hot' -> #packageHot: .
	'Package power limit (W)' -> #packagePowerLimit:
	} asDictionary.
	
	indexOfEqual := aLine indexOf: $=.
	beforeEquals := aLine copyFrom: 1 to: indexOfEqual - 1.
	afterEquals := aLine copyFrom: indexOfEqual + 1 to: aLine size.
	selector:= d at: beforeEquals ifAbsent: [ ^ self ].
	self currentEntry perform: selector with: (Float readFrom: afterEquals)