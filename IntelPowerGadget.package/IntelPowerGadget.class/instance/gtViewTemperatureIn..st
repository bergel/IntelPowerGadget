visualization
gtViewTemperatureIn: composite
	<gtInspectorPresentationOrder: -10>
	| lb |
	composite roassal2
		title: 'GTFrq';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds dotShape color: Color blue trans.
			ds points: self validLogEntries.
			ds y: #gtFrequency.
			b add: ds.
			"b addDecorator: (RTAverageDecorator new).
			b addDecorator: (RTStandardDeviationDecorator new)."
			b addDecorator: RTMeanDevVarDecorator new.
			b build.
			
			lb := RTLegendBuilder new.
			lb view: b view.
			lb addText: 'Graphic Processor (GT) frequency along time'.
			lb addText: '# snapshots = ', self validLogEntries size asString.
			lb build.
			
			b view. ]