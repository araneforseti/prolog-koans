:- module(runner, [go/0]).

go :- 
	[runner_predicates],
	[runner_list],
	[runner_arithmetic],
	runner_predicates:predicates_go,
	runner_list:list_go,
	runner_arithmetic:arithmetic_go.
