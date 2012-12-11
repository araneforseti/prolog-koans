:- module(runner_predicates, [predicates_go/0]).

run_koan(X,L) :-
	koan_helper(X, about_predicates:L).

predicates_go :-
	[runner_helper],
	[about_predicates],
	load_test_files(about_predicates),
	predicates_initial,
	predicates_equality.
	

predicates_initial :-
	run_koan('To assert the truth, one must know the facts', parent).

predicates_equality :-
	run_koan('Equality can be specified with use of the same name', equal).
