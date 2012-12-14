:- begin_tests(about_logic_codes).
:- use_module(about_logic_codes).

test(and) :- and(true,true).

test(and, [fail]) :- and(true,false).
test(and, [fail]) :- and(false,false).
test(and, [fail]) :- and(tfalse,true).

test(or) :- 
	or(true, false),
	or(true, true),
	or(false, true).
test(or, [fail]) :- or(false, false).	

test(nand) :- 
	nand(false, false),
	nand(true, false),
	nand(false, true).

test(nand, [fail]) :-
	nand(true, true).

test(nor) :- or(false, false).

test(nor, [fail]) :-
	nor(true, false),
	nor(true, true),
	nor(false, true).

test(xor) :-
	xor(false, true),
	xor(true, false).

test(xor, [fail]) :- xor(true, true).
test(xor, [fail]) :- xor(false, false).

test(impl) :- 
	impl(true, true),
	impl(false, false),
	impl(false, true).

test(impl, [fail]) :- impl(true, false).

test(equ) :- 
	equ(true, true),
	equ(false, false).

test(equ, [fail]) :- equ(true, false).
test(equ, [fail]) :- equ(false, true).

:- end_tests(about_logic_codes).
