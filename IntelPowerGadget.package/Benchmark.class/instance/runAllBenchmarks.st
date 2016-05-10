public
runAllBenchmarks
	"
	PUBLIC Method
	run all the benchmarks
	
	Benchmark new runAllBenchmarks
	"
	<script: 'Benchmark new runAllBenchmarks'>
	(Benchmark allSubclasses reject: [ :c | c hasSubclasses ]) do: [ :c | c new run ]