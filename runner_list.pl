:- module(runner_list, [list_go]).

list_load :-
	[my_lists],
	load_test_files(my_list).

list_go :-
	list_load,
	list_first_element,
	list_last_element,
	list_my_penultimate.

list_first_element :-
	see(user),
	write('A list is little more than a head and tail.'),
	run_tests(my_lists:my_first).

list_last_element :-
	see(user),
	write('A tail is not so hard with recursion.'),
	run_tests(my_lists:my_last).

list_my_penultimate :-
	see(user),
	write('To find the second to last, you must know you have two'),
	run_tests(my_lists:my_penultimate).
