:- begin_tests(about_arithmetic).
:- use_module(about_arithmetic).

test(is_prime) :-
	is_prime(7).
test(is_prime, [fail]) :-
	is_prime(6).

:- end_tests(about_arithmetic).
