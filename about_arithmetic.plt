:- begin_tests(about_arithmetic).
:- use_module(about_arithmetic).

test(is_prime) :-
	is_prime(7).
test(is_prime, [fail]) :-
	is_prime(6).

test(prime_factors) :-
	prime_factors(315,[3,3,5,7]).

test(prime_factors_multiplicity) :-
	prime_factors_multiplicity(315,[[3,2],[5,1],[7,1]]).

test(range_prime) :-
	range_prime(2,9,[2,3,5,7]).

test(goldbach_conjecture) :-
	goldbach_conjecture(28, [5, 23]).

test(greatest_common_divisor) :-
	greatest_common_divisor(36, 63, 9).

test(is_coprime) :-
	is_coprime(35,64).

:- end_tests(about_arithmetic).
