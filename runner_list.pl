:- module(runner_list, [list_go]).

list_load :-
	[my_lists],
	load_test_files(my_list).

list_go :-
	list_load,
	list_first_element.

list_first_element :-
	see(user),
	write('A list is little more than a head and tail.'),
	run_tests(my_lists:my_first).

list_last_element :-
	see(user),
	write('A tail is not so hard with recursion.'),
	run_tests(my_lists:my_last).
