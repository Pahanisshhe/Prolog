read_list(0,[]):-!.
read_list(N, [Head|Tail]):-read(Head), N1 is N -1, read_list(N1,Tail).

write_list([]):-!.
write_list([Head|Tail]):-write(Head),write("   "),write_list(Tail).

% + обязательно аргумент должен быть унифицирован
% - всегда не унифицирован
% ? как ун. так и неун.

sum_list_down(List, Sum):- sum_list_down(List, 0, Sum).
sum_list_down([], Sum, Sum):-!.
sum_list_down([Head|Tail], S, Sum):- S1 is S + Head, sum_list_down(Tail, S1, Sum).

pr4_2():-write("write N: "), read(N), read_list(N, List),
    sum_list_down(List,Sum), write(Sum).

sum_list_up([], 0):-!.
sum_list_up([Head|Tail], Sum):- sum_list_up(Tail, Sum1), Sum is Sum1 + Head.

list_el_numb(List, Elem, Number):-list_el_numb(List, Elem, 0, Number).
list_el_numb([H|_], H, Number, Number):- !.
list_el_numb([_|T], Elem, I, Number):- I1 is I + 1, list_el_numb(T, Elem, I1, Number).


pr4_4():-write("write N: "), read(N), read_list(N, List),write("write elem: "), read(Elem),
    list_el_numb(List, Elem, Number), write("number: "), write(Number), !.
pr4_4():- write("there is no element!").

in_list([El|_],El).
in_list([_|Tail],El):- in_list(Tail, El).

% ?- in_list([1,2,3],El), write(El),fail.
% ?- read_list(3,List), in_list(List,X), in_list(List,Y), Z is X * Y, write(Z), nl, fail .

%append(List1, List2, List).
append1([], List2, List2).
append1([H|T1], List2, [H|T2]):- append1(T1, List2, T2).


%task 1.7
%длина массива - N

%empty_list(List):-List is [].
%add_list(Elem,[H,T]):-
head_list([H|_],H).
empty_list([]).

add_list(_,[]):-!.
add_list(Elem,[_|T]):-add_list(Elem,T), T is [Elem].

add_list_top(N,[H|T],[H1,T1]):- N>0 -> (H1 is H, N1 is N-1, add_list_top(N1,T,T1));!.

cycle_2_right(N):-read_list(N,List),
    Numb1 is N-1, %последний
    Numb2 is N-2, %предпоследний
    list_el_numb(List,Elem1,Numb1),
    list_el_numb(List,Elem2,Numb2),
    append1([],[Elem2,Elem1],NewList1),
    %write_list(NewList)
    add_list_top(Numb2,List,NewList2),
    append1(NewList1,NewList2,NewList),
    write_list(NewList)
    .



