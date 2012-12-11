:- module(runner_helper, [koan_helper/2]).

koan_helper(X,L) :-
	see(user),
	write(X),
	run_tests(L).
