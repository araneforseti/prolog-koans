:- module(runner_arithmetic, [arithmetic_go/0]).

helper(X) :-
	see(user),
	write(X).

arithmetic_load :- 
	[about_arithmetic],
	load_test_files(about_arithmetic).

arithmetic_go :- 
	arithmetic_load,
	arithmetic_prime.

arithmetic_prime :-
	helper('Can you write a predicate for prime numbers?'),
	run_tests(about_arithmetic:is_prime).

arithmetic_prime_factors :- 
	helper('Can you find all the prime factors given a positive integer?'),
	run_tests(about_arithmetic:prime_factors).
