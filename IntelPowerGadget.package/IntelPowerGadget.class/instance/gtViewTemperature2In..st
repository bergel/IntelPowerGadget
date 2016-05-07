visualization
gtViewTemperature2In: composite
	<gtInspectorPresentationOrder: -10>
	| lb |
	composite roassal2
		title: 'ProcEnergy';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds points: self validLogEntries.
			ds y: #processorEnergyJ.
			b add: ds.
			b build.
			
			lb := RTLegendBuilder new.
			lb view: b view.
			lb addText: 'Total energy of the processor (J)'.
			lb addText: '# snapshots = ', self validLogEntries size asString.
			lb build.
			
			b view ]