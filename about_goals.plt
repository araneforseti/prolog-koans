:- begin_tests(about_goals).
:- use_module(about_goals).

test(parent) :-
	parent(adam, steve).

test(equal) :-
	equal(a,a).
test(equal, [fail]) :-
	equal(a,b).

:- end_tests(about_goals).
