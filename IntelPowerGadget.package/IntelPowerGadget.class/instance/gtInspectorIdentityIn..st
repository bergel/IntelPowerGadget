visualization
gtInspectorIdentityIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Identity';
		initializeView: [
			| b |
			b := RTMondrian new.
			b nodes: self validLogEntries.
			b normalizer distinctColor.
			b layout grid; gapSize: 1.
			b ]