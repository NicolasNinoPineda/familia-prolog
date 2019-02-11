padre_De('Pepe','Juan').
padre_De('Pepe','Ana').
padre_De('Pepe','Daniel').
padre_De('Pepe','Carolina').

padre_De('Maria','Juan').
padre_De('Maria','Ana').
padre_De('Maria','Daniel').
padre_De('Maria','Carolina').

padre_De('Juan','Luisa').
padre_De('Juan','Felipe').
padre_De('Valentina','Luisa').
padre_De('Valentina','Felipe').

padre_De('Ana','John').
padre_De('Ana','Sofia').
padre_De('Ana','Pablo').
padre_De('Andres','John').
padre_De('Andres','Sofia').
padre_De('Andres','Pablo').

padre_De('Daniel','Emma').
padre_De('Alejandro','Emma').

abuelo(X,Y):- padre_De(X,Z),padre_De(Z,Y).

hermano(X,Y):- padre_De(Z,X),padre_De(Z,Y).

tio(X,Y):- padre_De(Z,Y),hermano(Z,X).

primo(X,Y):- padre_De(Z,X),padre_De(W,Y),hermano(Z,W).

casado(X,Y):- padre_De(X,Z),padre_De(Y,Z),X\==Y.

feliz(X,Y):- \+ casado(X,Y).
