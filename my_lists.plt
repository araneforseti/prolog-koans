:- begin_tests(my_lists).
:- use_module(my_lists).

test(my_first) :-
	my_first(a, [a,b,c]).
test(my_first, [fail]) :- 
	my_first(b, [a,b,c]).

test(my_last,[nondet]) :-
	my_last(c, [a,b,c]).

test(my_penultimate) :-
	my_penultimate(c, [a,b,c,d]).
test(my_penultimate, [fail]) :-
	my_penultimate(d, [a,b,c,d]).

test(my_element_at) :-
	my_element_at(c, [a,b,c,d], 3).
test(my_element_at, [fail]) :-
	my_element_at(d, [a,b,c,d], 3).
test(my_element_at, [fail]) :-
	my_element_at(c, [a,b,c,d], 2).

:- end_tests(my_lists).
