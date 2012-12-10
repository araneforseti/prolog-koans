:- module(runner_predicates, [predicates_go/0]).

predicates_go :-
	[about_predicates],
	load_test_files(about_predicates),
	predicates_initial.
	

predicates_initial :-
	see(user),
	write('To assert the truth, one must know the facts'),
	run_tests(about_predicates:parent).
