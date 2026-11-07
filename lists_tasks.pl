% Task 1: Delete every occurrence of X

% Empty list
deleteElement(_, [], []).

% If Head equals X, skip
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).


% Task 2: Add an element at the end of a list

% Add X to an empty list
add_at_the_end(X, [], [X]).

% Recursive case
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
