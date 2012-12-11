:- begin_tests(about_predicates).
:- use_module(about_predicates).

test(parent) :-
	parent(adam, steve).

test(equal) :-
	equal(a,a).
test(equal, [fail]) :-
	equal(a,b).

:- end_tests(about_predicates).
