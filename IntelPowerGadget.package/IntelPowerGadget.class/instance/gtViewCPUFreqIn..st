visualization
gtViewCPUFreqIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'CPUFrq';
		initializeView: [
			| b ds lb |
			b := RTGrapher new.
			ds := RTData new.
			ds points: self validLogEntries.
			ds y: #cpuFrequency.
			b add: ds.
			"b addDecorator: (RTAverageDecorator new).
			b addDecorator: (RTStandardDeviationDecorator new)."
			b addDecorator: RTMeanDevVarDecorator new.
			b build.
			
			lb := RTLegendBuilder new.
			lb view: b view.
			lb addText: 'CPU frequency along time'.
			lb addText: '# snapshots = ', self validLogEntries size asString.
			lb build.
			
			b view.  ]