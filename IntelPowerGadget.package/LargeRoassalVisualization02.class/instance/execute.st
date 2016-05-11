as yet unclassified
execute

	| b ds |
	b := RTGrapher new.
	ds := RTData new.
	ds points: (1 to: 10000 by: 0.4).
	b add: ds.
	b build