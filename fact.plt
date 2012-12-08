:- begin_tests(fact).
:- use_module(fact).

test(parent) :-
	parent(adam, steve).

:- end_tests(fact).
