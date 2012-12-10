:- module(runner, [go/0]).

go :- 
	[runner_predicates],
	runner_predicates:predicates_go,
	[runner_list],
	runner_list:list_go.
