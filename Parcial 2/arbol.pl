padre(gustavo, gus).
padre(gustavo, jennifer).
padre(gustavo, juan).
padre(gustavo, ramon).
padre(gustavo, roberto).

padre(roberto, gerardo).
padre(roberto, gustavo).
padre(roberto, guadalupe).

abuelo(X,Y):-padre(X,Z), padre(Z,Y).
hermano(X,Y):-padre(X,Z), padre(Z,Y).
tio(X,Z):-hermano(X,Y), padre(Y,Z).

imprimir_lista([C|R]) :- write(C), imprimir_lista(R).
imprimir_lista([]).

imprimir_lista2([R|C]) :-  imprimir_lista(R), write(C).
imprimir_lista2([]).

