:- module(runner_list, [list_go/0]).

run_koan(X,L) :-
	koan_helper(X, about_lists:L).

list_load :-
	[runner_helper],
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
	list_palindrome,
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
	run_koan('A list is little more than a head and tail.', my_first).

list_last_element :-
	run_koan('A tail is merely another list.', my_last).

list_my_penultimate :-
	run_koan('To find the second to last, you must know you have two', my_penultimate).

list_my_element_at :-
	run_koan('Use of recursion and subtraction can obtain a position.', my_element_at).

list_my_number_of :-
	run_koan('Recursion and addition can count.', my_number_of).

list_my_reverse :-
	run_koan('Use more definitions with multiple cases', my_reverse).

list_palindrome :-
	run_koan('A palindrome is the same when reversed', is_palindrome).

list_flatten :-
	run_koan('Predefined predicates is_list/1 and append/3 might be of use', my_flatten).

list_compress :-
	run_koan('Many definitions will be required', my_compress).

list_pack :-
	run_koan('Placing items into sublists is not so hard', my_pack).

list_encode :-
	run_koan('Using the previously made predicate will be of use here.', my_encode).

list_encode_modified :-
	run_koan('Non-duplicated elements should be directly copied in this one.', my_encode_modified).

list_encode_reverse :-
	run_koan('Can you reverse what once was done?', my_encode_reverse).

list_encode_direct :-
	run_koan('Can you encode without creating sublists, but instead counting directly?', my_encode_direct).

list_duplicate :-
	run_koan('Introducing duplication is simple.', my_duplicate).

list_duplicate_n :-
	run_koan('Duplicating a specified number of times could require math.', my_duplicate_for_n).

list_drop :-
	run_koan('Dropping every n elements requires list traversal', my_drop).

list_split :-
	run_koan('Can you split a list based on a given size without using a predefined predicate?', my_split).

list_slice :-
	run_koan('Extracting a list is not so difficult. Start the count with 1 for this instance.', my_slice).

list_rotate :-
	run_koan('Rotating is not too bad now that you can slice', my_rotate).

list_remove_at :-
	run_koan('First element is what would be removed, 2nd is the original array, 3rd is the index to remove (count starts at 1), and 4th is what is left behind.', remove_at).

list_insert_at :-
	run_koan('This time, insert the element specified in 1 into what is specified in two at 3 with result 4.', insert_at).

list_range :-
	run_koan('Creating a range is simple as counting', range).
