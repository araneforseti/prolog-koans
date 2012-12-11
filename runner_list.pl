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
	list_pack,
	list_encode,
	list_encode_modified,
	list_encode_reverse,
	list_encode_direct,
	list_drop,
	list_split,
	list_slice,
	list_rotate,
	list_remove_at,
	list_insert_at,
	list_range.

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

list_flatten :-
	see(user),
	write('Predefined predicates is_list/1 and append/3 might be of use'),
	run_tests(about_lists:my_flatten).

list_compress :-
	see(user),
	write('Many definitions will be required'),
	run_tests(about_lists:my_compress).

list_pack :-
	see(user),
	write('Placing items into sublists is not so hard'),
	run_tests(about_lists:my_pack).

list_encode :-
	see(user),
	write('Using the previously made predicate will be of use here.'),
	run_tests(about_lists:my_encode).

list_encode_modified :-
	see(user),
	write('Non-duplicated elements should be directly copied in this one.'),
	run_tests(about_lists:my_encode_modified).

list_encode_reverse :-
	see(user),
	write('Can you reverse what once was done?'),
	run_tests(about_lists:my_encode_reverse).

list_encode_direct :-
	see(user),
	write('Can you encode without creating sublists, but instead counting directly?'),
	run_tests(about_lists:my_encode_direct).

list_duplicate :-
	see(user),
	write('Introducing duplication is simple.'),
	run_tests(about_lists:my_duplicate).

list_duplicate_n :-
	see(user),
	write('Duplicating a specified number of times could require math.'),
	run_tests(about_lists:my_duplicate_for_n).

list_drop :-
	see(user),
	write('Dropping every n elements requires list traversal'),
	run_tests(about_lists:my_drop).

list_split :-
	see(user),
	write('Can you split a list based on a given size without using a predefined predicate?'),
	run_tests(about_lists:my_split).

list_slice :-
	see(user),
	write('Extracting a list is not so difficult. Start the count with 1 for this instance.'),
	run_tests(about_lists:my_slice).

list_rotate :-
	see(user),
	write('Rotating is not too bad now that you can slice'),
	run_tests(about_lists:my_rotate).

list_remove_at :-
	see(user),
	write('First element is what would be removed, 2nd is the original array, 3rd is the index to remove (count starts at 1), and 4th is what is left behind.'),
	run_tests(about_lists:remove_at).

list_insert_at :-
	see(user),
	write('This time, insert the element specified in 1 into what is specified in two at 3 with result 4.').
	run_tests(about_lists:insert_at).

list_range :-
	see(user),
	write('Creating a range is simple as counting'),
	run_tests(about_lists:range).
