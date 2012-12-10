:- module(runner_fact, [fact_go/0]).

fact_go :-
	[fact],
	load_test_files(fact),
	fact_initial.
	

fact_initial :-
	see(user),
	write('To assert the truth, one must know the facts'),
	run_tests(fact:parent).
