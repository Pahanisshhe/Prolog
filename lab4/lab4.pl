%task 1.7
%длина массива - N

%empty_list(List):-List is [].
%add_list(Elem,[H,T]):-
head_list([H|_],H).
empty_list([]).

add_list(_,[]):-!.
add_list(Elem,[_|T]):-add_list(Elem,T), T is [Elem].

cycle_2_right(N):-read_list(N,List),
    Numb1 is N-1, %последний
    Numb2 is N-2, %предпоследний
    list_el_numb(List,Elem1,Numb1),
    list_el_numb(List,Elem2,Numb2)
    .
