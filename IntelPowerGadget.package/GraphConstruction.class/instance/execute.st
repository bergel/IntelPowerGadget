hooks
execute

	| b |
	b := RTMondrian new.
	b nodes: (1 to: 40000).
	b edges connectFrom: [ :v | v // 2 ].
	b layout grid.
	b build