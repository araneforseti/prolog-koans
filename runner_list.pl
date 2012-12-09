:- module(runner_list, [list_go]).

list_load :-
	[my_lists],
	load_test_files(my_list).

list_go :-
	list_load,
	list_first_element,
	list_last_element,
	list_my_penultimate,
	list_my_element_at,
	list_my_number_of,
	list_my_reverse,
	list_palindrom.

list_first_element :-
	see(user),
	write('A list is little more than a head and tail.'),
	run_tests(my_lists:my_first).

list_last_element :-
	see(user),
	write('A tail is merely another list.'),
	run_tests(my_lists:my_last).

list_my_penultimate :-
	see(user),
	write('To find the second to last, you must know you have two'),
	run_tests(my_lists:my_penultimate).

list_my_element_at :-
	see(user),
	write('Use of recursion and subtraction can obtain a position.'),
	run_tests(my_lists:my_element_at).

list_my_number_of :-
	see(user),
	write('Recursion and addition can count.'),
	run_tests(my_lists:my_number_of).

list_my_reverse :-
	see(user),
	write('Use more definitions with multiple cases'),
	run_tests(my_lists:my_reverse).

list_palindrome :-
	see(user),
	write('A palindrome is the same when reversed'),
	run_tests(my_lists:my_palindrome).
