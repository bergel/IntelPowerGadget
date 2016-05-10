hooks
execute
	10 timesRepeat: [
		((RPackageOrganizer default packages select: [ :p | p packageName beginsWith: 'Versionner' ]) flatCollect: #definedClasses) do: #recompile
	]