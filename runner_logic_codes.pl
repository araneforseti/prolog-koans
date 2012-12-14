:- module(runner_logic_codes, [logic_go/0]).

logic_load :-
	[runner_helper],
	[about_logic_codes],
	load_test_files(about_logic_codes).

run_koan(X,L) :-
	koan_helper(X, about_logic_codes:L).

logic_go :-
	logic_load,
	logic_and,
	logic_or,
	logic_nand,
	logic_nor,
	logic_xor,
	logic_impl,
	logic_equ.

logic_and :-
	run_koan('Define a predicate which succeeds only if both arguments succeed (and)', and).
	
logic_or :-
	run_koan('Define a predicate which succeeds if either argument succeeds (or)', or).

logic_nand :- run_koan('Define the nand predicate', nand).

logic_nor :- run_koan('Define the nor predicate', nor).

logic_xor :- run_koan('Define the xor predicate', xor).

logic_impl :- run_koan('Define the impl predicate', impl).

logic_equ :- run_koan('Define the equ predicate for logical equivalence', equ).
