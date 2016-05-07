private - util
createNewBenchmark
	"
	self new createNewBenchmark
	"
	<script: 'Benchmark new createNewBenchmark'>
	| clsName cls |
	clsName := UIManager default request: 'Enter a class name' initialAnswer: 'MyNewBenchmark'.
	(clsName isNil or: [ clsName isEmpty or: [ clsName first isUppercase not ] ]) ifTrue: [ ^ self ].

	cls := Benchmark subclass: clsName asSymbol
				instanceVariableNames: ''
				classVariableNames: ''
				package: 'IntelPowerGadget-Benchmarks'.
	
	cls compile: 'execute
	"This method contains a piece of code to execute"
	self subclassResponsibility' classified: 'hooks'.
