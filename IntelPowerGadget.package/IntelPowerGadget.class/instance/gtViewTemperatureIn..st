visualization
gtViewTemperatureIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Temp';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds points: logEntries.
			ds y: #gtFrequency.
			b add: ds.
			b ]