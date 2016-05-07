visualization
gtViewIAPowerIn: composite
	<gtInspectorPresentationOrder: -100>
	| lb |
	composite roassal2
		title: 'IAPow';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds points: self validLogEntries.
			ds y: #iaPowerW.
			b add: ds.
			"b addDecorator: (RTAverageDecorator new).
			b addDecorator: (RTStandardDeviationDecorator new)."
			b addDecorator: RTMeanDevVarDecorator new.
			b build.
			
			lb := RTLegendBuilder new.
			lb view: b view.
			lb addText: 'Energy of the CPU/processor cores along time (IA Power (W))'.
			lb addText: '# snapshots = ', self validLogEntries size asString.
			lb build.
			
			b view. ]