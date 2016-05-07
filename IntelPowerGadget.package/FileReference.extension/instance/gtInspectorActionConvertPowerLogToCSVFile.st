*IntelPowerGadget
gtInspectorActionConvertPowerLogToCSVFile
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :composite | 
			IntelPowerGadget new 
				parseFilenamed: self fullName;
				exportAsCSV: self fullName, '.csv' ];
		icon: GLMUIThemeExtraIcons glamorousAdd;
		condition: [ self isFile and: [ self extension = 'log' ] ];
		title: 'Convert Energy Power log file to CSV'