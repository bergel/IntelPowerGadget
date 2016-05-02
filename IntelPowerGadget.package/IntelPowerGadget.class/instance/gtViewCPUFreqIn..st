visualization
gtViewCPUFreqIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Temp';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds points: self validLogEntries.
			ds y: #cpuFrequency.
			b add: ds.
			b ]