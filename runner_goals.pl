:- module(runner_goals, [goals_go/0]).

run_koan(X,L) :-
	koan_helper(X, about_goals:L).

goals_go :-
	[runner_helper],
	[about_goals],
	load_test_files(about_goals),
	goals_initial,
	goals_equality.
	

goals_initial :-
	run_koan('To assert the truth, one must know the facts', parent).

goals_equality :-
	run_koan('Equality can be specified with use of the same name', equal).
