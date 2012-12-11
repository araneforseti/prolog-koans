:- module(runner_predicates, [predicates_go/0]).

predicates_go :-
	[about_predicates],
	load_test_files(about_predicates),
	predicates_initial,
	predicates_equality.
	

predicates_initial :-
	see(user),
	write('To assert the truth, one must know the facts'),
	run_tests(about_predicates:parent).

predicates_equality :-
	see(user),
	write('Equality can be specified with use of the same name'),
	run_tests(about_predicates:equal).
