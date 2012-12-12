:- module(runner_arithmetic, [arithmetic_go/0]).

run_koan(X,L) :-
	koan_helper(X,about_arithmetic:L).
	

arithmetic_load :- 
	[runner_helper],
	[about_arithmetic],
	load_test_files(about_arithmetic).

arithmetic_go :- 
	arithmetic_load,
	arithmetic_prime,
	arithmetic_prime_factors,
	arithmatic_prime_factors_multiplicity.

arithmetic_prime :-
	run_koan('Can you write a predicate for prime numbers?', is_prime).

arithmetic_prime_factors :- 
	run_koan('Can you find all the prime factors given a positive integer?', prime_factors).

arithmetic_prime_factors_multiplicity :- 
	run_koan('Can you find all the prime factors with their multiplicity given a positive integer? (The previous problem may be of use)', prime_factors_multiplicity).
