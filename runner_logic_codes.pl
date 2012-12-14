:- module(runner_logic_codes, [logic_go/0]).

logic_load :-
	[about_logic_codes],
	load_test_files(about_logic_codes).

logic_go :-
	logic_load.
