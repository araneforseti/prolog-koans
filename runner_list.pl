:- module(runner_list, [list_go]).

list_load :-
	[about_lists],
	load_test_files(about_lists).

list_go :-
	list_load,
	list_first_element,
	list_last_element,
	list_my_penultimate,
	list_my_element_at,
	list_my_number_of,
	list_my_reverse,
	list_palindrom,
	list_flatten,
	list_compress,
	list_compress_single.

list_first_element :-
	see(user),
	write('A list is little more than a head and tail.'),
	run_tests(about_lists:my_first).

list_last_element :-
	see(user),
	write('A tail is merely another list.'),
	run_tests(about_lists:my_last).

list_my_penultimate :-
	see(user),
	write('To find the second to last, you must know you have two'),
	run_tests(about_lists:my_penultimate).

list_my_element_at :-
	see(user),
	write('Use of recursion and subtraction can obtain a position.'),
	run_tests(about_lists:my_element_at).

list_my_number_of :-
	see(user),
	write('Recursion and addition can count.'),
	run_tests(about_lists:my_number_of).

list_my_reverse :-
	see(user),
	write('Use more definitions with multiple cases'),
	run_tests(about_lists:my_reverse).

list_palindrome :-
	see(user),
	write('A palindrome is the same when reversed'),
	run_tests(about_lists:is_palindrome).

lists_flatten :-
	see(user),
	write('Predefined predicates is_list/1 and append/3 might be of use'),
	run_tests(about_lists:my_flatten).

lists_compress :-
	see(user),
	write('Many definitions will be required'),
	run_tests(about_lists:my_compress).

lists_compress_single :-
	see(user),
	write('It is possible to avoid duplicate elements'),
	run_tests(about_lists:my_compress_single).
