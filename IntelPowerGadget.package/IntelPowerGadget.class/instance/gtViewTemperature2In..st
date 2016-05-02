visualization
gtViewTemperature2In: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Temp2';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds points: self validLogEntries.
			ds y: #processorEnergyJ.
			b add: ds.
			b ]