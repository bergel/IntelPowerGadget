visualization
gtInspectorIdentityIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Identity';
		initializeView: [
			| b |
			b := RTMondrian new.
			b nodes: logEntries.
			b normalizer distinctColor.
			b layout grid; gapSize: 1.
			b ]