read_list(0,[]):-!.
read_list(N, [H|T]):-
    read(H), Nnext is N-1, read_list(Nnext,T).

write_list([]):-!.
write_list([H|T]):-
    write(H),write("   "),write_list(T).

list_el_numb(List, Elem, Number):-
    list_el_numb(List, Elem, 0, Number).
list_el_numb([H|_], H, Number, Number):-!.
list_el_numb([_|T], Elem, I, Number):-
    Inext is I + 1, list_el_numb(T, Elem, Inext, Number).

empty_list([]).
head_list([H|_],H).

append_list([], List, List).
append_list([H|T1], List, [H|T2]):-append_list(T1, List, T2).

%все возможные варианты списков для контеканация
pr1(N):-
    read_list(N,List), append_list(List1,List2,List),
    write(List1), write(List2),nl,fail.

%составление списка из N начальных
%количество элементов, исходный список, на пред. шаге, итоговый список
new_n_list(1,[H|_],[H|[]]):-!.
new_n_list(N,[H|T],List):-
    Nnext is N-1,
    new_n_list(Nnext,T,PredList),
    append_list([H],PredList,List).

%циклический сдвиг массива вправо на 1
cycle_list_right(NewList):-
    write("N"),nl,
    read(N),
    write("List"),nl,
    read_list(N,List),
    ElemNumber is N-1,
    new_n_list(ElemNumber,List,NewList1),
    list_el_numb(List,Elem,ElemNumber),
    append_list([Elem],NewList1,NewList).

cycle_list_right(N,List,NewList):-
    ElemNumber is N-1,
    new_n_list(ElemNumber,List,NewList1),
    list_el_numb(List,Elem,ElemNumber),
    append_list([Elem],NewList1,NewList).

%циклический сдвиг массива вправо на Length
cycle_list_n_right(Length,NewList):-
    write("N"),nl,
    read(N),
    write("List"),nl,
    read_list(N,List),
    cycle_list_n_right(N,Length,List,NewList).

cycle_list_n_right(_,0,List,List):-!.
cycle_list_n_right(N,I,List,NewList):-
    Inext is I-1,
    cycle_list_n_right(N,Inext,List,List1),
    cycle_list_right(N,List1,NewList).

%циклический сдвиг массива влево на 1
cycle_list_left(NewList):-
    write("N"),nl,
    read(N),
    write("List"),nl,
    read_list(N,[H|T]),
    append_list(T,[H],NewList).

%отзеркаливание списка
mirror_list(NewList):-
    write("N"),nl,
    read(N),
    write("List"),nl,
    read_list(N,List),
    mirror_list(N,List,NewList).

mirror_list(_,[T],T):-!.
mirror_list(N,List,NewList):-
    cycle_list_right(N,List,[H|T]),
    Nnext is N-1,
    mirror_list(Nnext,T,NewT),
    append([H],NewT,NewList).

%длина массива
list_length([],0):-!.
list_length([_|T],N):-
    list_length(T,PredN),
    N is PredN+1.
