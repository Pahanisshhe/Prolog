%MINECRAFT
world(земля,1).
world(камень,1).
world(вода,1).
world(снег,1).
world(бревно,1).
world(песок,1).
world(незерак,2).
world(стебель,2).
world(песок_душ,2).
world(базальт,2).
world(нез_кирпичи,2).
world(кварц,2).
world(чернит,2).
world(позол_чернит,2).
world(светокамень,2).
world(эндерняк,3).
world(энд_сундук,3).
world(пур_блок,3).
world(обсидиан,4).
world(бедрок,4).
world(лава,4).
world(магма,4).

tool(земля,2).
tool(камень,1).
tool(вода,4).
tool(снег,2).
tool(бревно,3).
tool(песок,2).
tool(незерак,1).
tool(стебель,3).
tool(песок_душ,2).
tool(базальт,1).
tool(нез_кирпичи,1).
tool(кварц,1).
tool(чернит,1).
tool(позол_чернит,1).
tool(светокамень,1).
tool(эндерняк,1).
tool(энд_сундук,1).
tool(пур_блок,1).
tool(обсидиан,1).
tool(бедрок,1).
tool(лава,4).
tool(магма,1).

color(земля,1).
color(камень,3).
color(вода,2).
color(снег,5).
color(бревно,1).
color(песок,6).
color(незерак,4).
color(стебель,1).
color(песок_душ,1).
color(базальт,3).
color(нез_кирпичи,4).
color(кварц,5).
color(чернит,3).
color(позол_чернит,6).
color(светокамень,6).
color(эндерняк,6).
color(энд_сундук,2).
color(пур_блок,2).
color(обсидиан,2).
color(бедрок,3).
color(лава,6).
color(магма,4).

decor(земля,0).
decor(камень,0).
decor(вода,0).
decor(снег,0).
decor(бревно,0).
decor(песок,0).
decor(незерак,0).
decor(стебель,0).
decor(песок_душ,0).
decor(базальт,1).
decor(нез_кирпичи,1).
decor(кварц,0).
decor(чернит,0).
decor(позол_чернит,0).
decor(светокамень,1).
decor(эндерняк,0).
decor(энд_сундук,1).
decor(пур_блок,0).
decor(обсидиан,0).
decor(бедрок,0).
decor(лава,0).
decor(магма,0).

%task3
pr1():-q1(A1),
    (A1=1 ->
         (q2(A21),
         ((A21=1;A21=3;A21=4) ->
               (world(X1,A1),tool(X1,A21),
                      nl,write("Это "),write(X1),nl);
               (q3(A31),world(X2,A1),tool(X2,A21),color(X2,A31),
                      nl,write("Это "),write(X2),nl)));
      (A1=4 ->
           (q2(A22),
           (A22=4 ->
                (world(X3,A1),tool(X3,A22),
                      nl,write("Это "),write(X3),nl);
                (q3(A32),world(X4,A1),tool(X4,A22),color(X4,A32),
                      nl,write("Это "),write(X4),nl)));
        (A1=3 ->
            (q3(A33),
            (A33=6 ->
                 (world(X5,A1),color(X5,A33),
                       nl,write("Это "),write(X5),nl);
                 (q4(A43),world(X6,A1),color(X6,A33),decor(X6,A43),
                       nl,write("Это "),write(X6),nl))));
          (
              (q2(A24),
              ((A24=2;A24=3) ->
                   (world(X7,A1),tool(X7,A24),
                        nl,write("Это "),write(X7),nl);
                   (q3(A34),
                   (A34=5 ->
                         (world(X8,A1),tool(X8,A24),color(X8,A34),
                               nl,write("Это "),write(X8),nl);
                         (q4(A44),world(X9,A1),tool(X9,A24),color(X9,A34),decor(X9,A44),
                               nl,write("Это "),write(X9),nl)))))))).
