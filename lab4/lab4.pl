%чтение списка
read_list(0,[]):-!.
read_list(N,[H|T]):-
    read(H),N1 is N - 1, read_list(N1,T).

%вывод списка
write_list([]):-!.
write_list([H|T]):-
    write(H), write(", "), write_list(T).

%task2 сумма элементов списка, рекурсия вниз
sum_list_down(List,Sum):-
    sum_list_down(List,0,Sum).
sum_list_down([],Sum,Sum):-!.
sum_list_down([H|T],S,Sum):-
    S1 is S + H, sum_list_down(T,S1,Sum).

%task3 сумма элементов списка, рекурсия вверх
sum_list_up([],0):-!.
sum_list_up([H|T],Sum):-
    sum_list_up(T,S1), Sum is H + S1.

%task4 
list_el_numb(List,Elem,Number):-
    list_el_numb(List,Elem,0,Number).
list_el_numb([H|_],H,Number,Number):-!.
list_el_numb([_|T],Elem,I,Number):-
    I1 is I + 1, list_el_numb(T,Elem,I1,Number).

pr_elem :- 
    write("Введите число элементов: "), read(N), 
    read_list(N,List),
    write("Введите элемент: "), read(Elem), nl,
    list_el_numb(List,Elem,Number),
    write("Позиция элемента: "), write(Number),!.
pr_elem :- write("Такого элемента нет").

%task5
pr_num_elem :- 
    write("Введите число элементов: "), read(N), 
    read_list(N,List),
    write("Введите позицию элемента: "), read(Number), nl,
    list_el_numb(List,Elem,Number),
    write("Элемент: "), write(Elem),!.
pr_num_elem :- write("Такого номера нет").

%task6
min_list_up([],0):-!.
min_list_up([H|T],Min):- 
    min_list_up(T,Min1),
    (Min1 = 0 -> Min = H ; 
    (H < Min1 -> Min = H ; Min = Min1)).
    
%task7
min_list_down(List,Min):- 
    min_list_down(List,0,Min).
min_list_down([],Min,Min):-!.
min_list_down([H|T],M,Min):- 
    (M = 0 -> M1 = H ; 
    (H < M -> M1 = H ; M1 = M)),
    min_list_down(T,M1,Min).

%task8
pr_min :- 
    write("Введите число элементов: "), read(N), 
    read_list(N,List),
    min_list_up(List,Min), 
    write("Минимальный элемент: "), write(Min).

%task9
in_list([El|_],El):-!.
in_list([_|T],El):- in_list(T,El).

%task10
rev_list(List,RevList):-
    rev_list(List,[],RevList).
rev_list([],Revl,Revl):-!.
rev_list([H|T],T1,RevList):-
    rev_list(T,[H|T1],RevList).

%task11
p([],_):-!.
p([SubH|SubT],[H|T]):-
    H = SubH -> p(SubT,T) ; p([SubH|SubT],T).

%task12
delete_elem(List,Number,Result):-
    delete_elem(List,Number,0,Result).
delete_elem([_|T],Number,Number, T):-!.
delete_elem([H|T],Number, I,[H|T1]):-
    I1 is I + 1, delete_elem(T,Number,I1,T1).

%task13
delete_all([], _, []):-!.
delete_all([Elem|T], Elem, List):- delete_all(T, Elem, List),!.
delete_all([H|T], Elem,[H|List]):- delete_all(T, Elem, List).

%task14
check_elem([H|T]):- check_elem(H,T), check_elem(T).
check_elem([]):-!.
check_elem(_,[]):-!.
check_elem(Elem,[H|T]):- Elem \= H, check_elem(Elem,T).





