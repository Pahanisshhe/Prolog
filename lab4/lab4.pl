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

