hooks
execute
	"This method contains a piece of code to execute"
	500 timesRepeat: [ 
		| arr |
		arr := Array new: 1000000.
		1 to: arr size do: [ :i | arr at: i put: 42 ] ]