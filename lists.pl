% lists.pl

% Довжина списку
my_length([], 0).
my_length([_|Tail], N) :-
    my_length(Tail, N1),
    N is N1 + 1.

% Сума елементів списку
sum_list([], 0).
sum_list([Head|Tail], Sum) :-
    sum_list(Tail, SumTail),
    Sum is Head + SumTail.

% Максимальний елемент списку (для непорожніх списків)
max_list([X], X).
max_list([Head|Tail], Max) :-
    max_list(Tail, MaxTail),
    ( Head > MaxTail -> Max = Head ; Max = MaxTail ).

% Квадрат елементів списку
map_square([], []).
map_square([Head|Tail], [HeadSquared|TailSquared]) :-
    HeadSquared is Head * Head,
    map_square(Tail, TailSquared).