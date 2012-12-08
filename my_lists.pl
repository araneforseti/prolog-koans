:- module(my_lists, [my_first/2,my_last/2]).

my_first(_,_) :- false.

my_last(X, [X]).
my_last(_,_) :- false.
