visualization
gtViewIAPowerIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'IAPow';
		initializeView: [
			| b ds |
			b := RTGrapher new.
			ds := RTData new.
			ds points: self validLogEntries.
			ds y: #iaPowerW.
			b add: ds.
			b ]