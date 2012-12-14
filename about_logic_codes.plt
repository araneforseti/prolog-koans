:- begin_tests(about_logic_codes).
:- use_module(about_logic_codes).

test(and) :- and(a,a).

test(and, [fail]) :- and(a,b).

:- end_tests(about_logic_codes).
