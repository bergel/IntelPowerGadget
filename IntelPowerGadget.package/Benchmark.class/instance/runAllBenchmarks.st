public
runAllBenchmarks
	"
	PUBLIC Method
	run all the benchmarks
	"
	Benchmark allSubclassesDo: [ :c | c new run ]