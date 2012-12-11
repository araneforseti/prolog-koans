:- module(runner_arithmetic, [arithmetic_go/0]).

arithmetic_load :- 
	[about_arithmetic],
	load_test_files(about_arithmetic).

arithmetic_go :- 
	arithmetic_load,
	arithmetic_prime.

arithmetic_prime :-
	see(user),
	write('Can you write a predicate for prime numbers?'),
	run_tests(about_arithmetic:is_prime).
