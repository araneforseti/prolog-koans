:- begin_tests(about_lists).
:- use_module(about_lists).

test(my_first) :-
	my_first(X, [a,b,c]),
	X = a.
test(my_first, [fail]) :- 
	my_first(b, [a,b,c]).

test(my_last,[nondet]) :-
	my_last(X, [a,b,c]),
	X = c.

test(my_penultimate, [nondet]) :-
	my_penultimate(X, [a,b,c,d]),
	X = c.
test(my_penultimate, [fail]) :-
	my_penultimate(d, [a,b,c,d]).

test(my_element_at, [nondet]) :-
	my_element_at(X, [a,b,c,d], 3),
	X = c.
test(my_element_at, [fail]) :-
	my_element_at(d, [a,b,c,d], 3).
test(my_element_at, [fail]) :-
	my_element_at(c, [a,b,c,d], 2).

test(my_number_of, [nondet]) :-
	my_number_of(3, [a,b,c]).

test(my_reverse) :-
	my_reverse([a,b,c,d],[d,c,b,a]).

test(is_palindrome) :-
	is_palindrome([x,a,m,a,x]).
test(is_palindrome, [fail]) :-
	is_palindrome([a,b,c,d]).

test(my_flatten, [nondet]) :-
  my_flatten([], []),
  my_flatten(x, [x]),
	my_flatten([a, [b, [c,d], e]], [a,b,c,d,e]).

test(my_compress, [nondet]) :-
	my_compress([a,a,a,a,b,b,b,b,c,c,c,c,a,a,d,e,e,e,e],[a,b,c,a,d,e]).

test(my_pack, [nondet]) :-
	my_pack([a,a,a,b,c,c,a,a,d,e,e,e,e],[[a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]).

test(my_encode, [nondet]) :-
	my_encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[[4,a],[1,b],[2,c],[2,a],[1,d],[4,e]]).

test(my_encode_modified, [nondet]) :-
	my_encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[[4,a],b,[2,c],[2,a],d,[4,e]]).

test(my_encode_reverse, [nondet]) :-
	my_encode_reverse([[4,a],b,[2,c],[2,a],d,[4,e]],[a,a,a,a,b,c,c,a,a,d,e,e,e,e]).

test(my_encode_direct) :-
	my_encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[[4,a],b,[2,c],[2,a],d,[4,e]]).

test(my_duplicate) :-
	my_duplicate([a,b,c,d],[a,a,a,b,b,b,c,c,c,d,d,d]).

test(my_duplicate_for_n) :-
	my_duplicate_for_n([a,b,c],2,[a,a,b,b,c,c]).

test(my_drop) :-
	my_drop([a,b,c,d,e,f,g,h,i,k],3,[a,b,d,e,g,h,k]).

test(my_split) :-
	my_split([a,b,c,d,e,f,g,h,i,k],3,[a,b,c],[d,e,f,g,h,i,k]).

test(my_slice) :-
	my_slice([a,b,c,d,e,g,h,i,k],3,7,[c,d,e,f,g]).

test(my_rotate) :-
	my_rotate([a,b,c,d,e,f,g,h],3,[d,e,f,g,h,a,b,c]).

test(remove_at) :-
	remove_at(b,[a,b,c,d],2,[a,c,d]).

test(insert_at) :-
	insert_at(alfa,[a,b,c,d],2,[a,alfa,b,c,d]).

test(range) :-
	range(4,9,[4,5,6,7,8,9]).


:- end_tests(about_lists).
