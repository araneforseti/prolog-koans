:- module(runner_helper, [koan_helper/2]).

koan_helper(X,L) :-
  Result = run_tests(L),
  check_result(X, Result).

koan_helper(_,L) :-
  run_tests(L).

check_result(_,true) :-
  true.

check_result(X, false) :-
  write_hint(X).

write_hint(X) :-
  see(user),
  writeln(X),
  false.
