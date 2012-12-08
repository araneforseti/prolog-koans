:- module(runner, [go/0]).

go :- 
	[runner_fact],
	runner_fact:fact_go,
	[runner_list],
	runner_list:list_go.
