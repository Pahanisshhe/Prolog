%base of facts
man(konstantin).
man(sergey).
man(matvey).
man(victor).
man(anton).
man(roman).
man(andrey).
man(zahar).

woman(mariya).
woman(ekaterina).
woman(alena).
woman(anna).
woman(kseniya).
woman(elena).
woman(alisa).
woman(kristina).
woman(yulia).

parent(konstantin,kseniya).
parent(mariya,kseniya).
parent(sergey,anton).
parent(ekaterina,anton).
parent(matvey,elena).
parent(alena,elena).
parent(victor,roman).
parent(anna,roman).
parent(anton,andrey).
parent(anton,zahar).
parent(anton,alisa).
parent(kseniya,andrey).
parent(kseniya,zahar).
parent(kseniya,alisa).
parent(roman,kristina).
parent(roman,yulia).
parent(elena,kristina).
parent(elena,yulia).

%task1
men:-man(X),write(X),nl,fail.
women:-woman(X),write(X),nl,fail.

%task2
children(X):-parent(X,Y),write(Y),nl,fail.

%task3
mother(X,Y):-parent(X,Y),woman(X).
mother(X):-mother(Y,X),write(Y).

%task4
father(X,Y):-parent(X,Y),man(X).
father(X):-father(Y,X),write(Y).

%task5
brother(X,Y):-mother(Z,X),mother(Z,Y),man(X),X\=Y.
brothers(X):-brother(Y,X),write(Y),nl,fail.

%task6
sister(X,Y):-father(Z,X),father(Z,Y),X\=Y,woman(X).
sisters(X):-sister(Y,X),write(Y),nl,fail.

%task7
b_s(X,Y):-father(Z,X),father(Z,Y),X\=Y.
b_s(X):-b_s(Y,X),write(Y),nl,fail.

%task8
grand_pa(X,Y):-father(X,Z),parent(Z,Y).
grand_pas(X):-grand_pa(Y,X),write(Y),nl,fail.

%task9
grand_son(X,Y):-parent(Z,X),parent(Y,Z),man(X).
grand_sons(X):-grand_son(Y,X),write(Y),nl,fail.

%task10
grand_pa_and_son(X,Y):-grand_pa(X,Y),grand_son(Y,X);grand_pa(Y,X),grand_son(X,Y).
