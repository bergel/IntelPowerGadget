public
runAllBenchmarks
	"
	PUBLIC Method
	run all the benchmarks
	
	Benchmark new runAllBenchmarks
	"
	Benchmark allSubclassesDo: [ :c | c new run ]