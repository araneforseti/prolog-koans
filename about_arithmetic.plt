:- begin_tests(about_arithmetic).
:- use_module(about_arithmetic).

test(is_prime) :-
	is_prime(7).
test(is_prime, [fail]) :-
	is_prime(6).

test(prime_factors) :-
	prime_factors(315,L),
	L = [3,3,5,7].

:- end_tests(about_arithmetic).
