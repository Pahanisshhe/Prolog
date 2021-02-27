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

