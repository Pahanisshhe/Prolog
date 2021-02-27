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

%task1
men:-man(X),write(X),nl,fail.
women:-woman(X),write(X),nl,fail.
