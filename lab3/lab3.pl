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

%task10
mul1(0,0):-!.
mul1(N,M):-mul1(N,1,M).
mul1(0,M,M):-!.
mul1(N,Mul,M):-N1 is N div 10, N2 is N mod 10, Mul1 is Mul*N2, mul1(N1,Mul1,M).

%task11
kolvo(0,0):-!.
kolvo(N,K):-N1 is N div 10, kolvo(N1,K1), N2 is N mod 10,
    ((N2>3,1 is N2 mod 2) -> K is K1 + 1; K is K1).

%task12
gcd(N,M,D):-max(N,M,X),gcd(N,M,X,D).
gcd(_,_,1,1):-!.
gcd(N,M,D,MD):-D1 is D-1, gcd(N,M,D1,MD1),
    ((0 is N mod D, 0 is M mod D, D>MD1) -> MD is D; MD is MD1).

%число, делитель, флаг
prime_number(_,2,_):-!.
prime_number(N,D,F):-D1 is D-1, prime_number(N,D1,F1),
    F1 is 1, (0 is N mod D -> F is 0; F is 1).
prime_number(N):-D is N div 2, prime_number(N,D,1).

%количество делителей числа
count_del(_,1,1):-!.
count_del(N,D,K):-D1 is D-1, count_del(N,D1,K1),
    (0 is N mod D -> K is K1+1; K is K1).
count_del(1,1):-!.
count_del(N,K):-count_del(N,N,K).
