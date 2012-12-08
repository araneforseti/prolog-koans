:- begin_tests(my_lists).
:- use_module(my_lists).

test(my_first) :-
	my_first(a, [a,b,c]).

test(my_last,[nondet]) :-
	my_last(c, [a,b,c]).

:- end_tests(my_lists).
