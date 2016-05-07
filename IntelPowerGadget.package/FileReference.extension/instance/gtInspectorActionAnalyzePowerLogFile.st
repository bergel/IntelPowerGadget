*IntelPowerGadget
gtInspectorActionAnalyzePowerLogFile
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :composite | 
			| result |
			result := IntelPowerGadget new parseFilenamed: self fullName.
			composite selection: result ];
		icon: GLMUIThemeExtraIcons glamorousAdd;
		condition: [ self isFile and: [ self extension = 'log' ] ];
		title: 'Load as Energy Power Log'