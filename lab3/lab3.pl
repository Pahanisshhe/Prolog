%task1
max(X,Y,X):-X>Y,!.
max(_,Y,Y).

%task2
max(X,Y,U,X):-X>Y,X>U,!.
max(_,Y,U,Y):-Y>U,!.
max(_,_,U,U).

%task3
fact(0,1):-!.
fact(N,X):- N1 is N-1, fact(N1,X1), X is X1*N.

%task4
fact1(N,X,N,X):-!.
fact1(I,F,N,X):-I1 is I+1,F1 is F*I1,fact1(I1,F1,N,X).
fact1(N,X):-fact1(0,1,N,X).

%task5
fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1, fib(N1,X1), N2 is N1-1, fib(N2,X2), X is X1 + X2.

%task6
%номер, текущий, предыдущий
fib1(N,X,_,N,X):-!.
fib1(I,F1,F0,N,X):- I1 is I+1, F2 is F1+F0, fib1(I1,F2,F1,N,X).
fib1(1,1):-!.
fib1(N,X):-fib1(2,1,1,N,X).

%task7
sum(0,0):-!.
sum(N,S):-N1 is N div 10, sum(N1,S1), S is S1+N mod 10.

%task8
sum1(N,S):-sum1(N,0,S).
sum1(0,S,S):-!.
sum1(A,Sum,S):-Ad is A div 10, Am is A mod 10, Sum1 is Sum + Am, sum1(Ad, Sum1, S).

%task9
mul(0,0):-!.
mul(N,M):-N1 is N div 10, (N>10 -> mul(N1,M1); M1 is 1), M is M1*(N mod 10).
