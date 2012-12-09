:- begin_tests(about_lists).
:- use_module(about_lists).

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

test(my_number_of) :-
	my_number_of(3, [a,b,c]).

test(my_reverse) :-
	reverse([a,b,c,d],[d,c,b,a]).

test(is_palindrome) :-
	is_palindrome([x,a,m,a,x]).

:- end_tests(about_lists).
