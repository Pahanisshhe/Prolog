%task1
max(X,Y,X):-X>Y,!.
max(_,Y,Y).

%task2
max(X,Y,U,X):-X>Y,X>U,!.
max(_,Y,U,Y):-Y>U,!.
max(_,_,U,U).
