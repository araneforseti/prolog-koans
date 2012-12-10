:- begin_tests(about_predicates).
:- use_module(about_predicates).

test(parent) :-
	parent(adam, steve).

:- end_tests(about_predicates).
