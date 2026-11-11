
% Shopping Program

% Start with five items
start :-
    Basket = [milk, bread, eggs, rice, apples],
    menu(Basket).

% Display menu
menu(Basket) :-
    nl,
    write('Shopping Menu'), nl,
    write('d - Display items'), nl,
    write('a - Add an item'), nl,
    write('e - Exit'), nl,
    write('Enter your choice: '),
    read(Choice),
    action(Choice, Basket).

% Display items
action(d, Basket) :-
    nl,
    write('Items in basket:'), nl,
    display_items(Basket),
    menu(Basket).

% Add an item
action(a, Basket) :-
    write('Enter item name: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    write('Item added!'), nl,
    menu(NewBasket).

% Exit
action(e, _) :-
    write('Goodbye!'), nl.

% Invalid choice
action(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

% Stop when list is empty
display_items([]).

% Display each item using recursion
display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
