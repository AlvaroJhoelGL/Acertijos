jefe(carlos,julio).
jefe(luis,sonia).
jefe(esther,ivan).
jefe(julio,alex).
jefe(julio,esther).
jefe(marco,luis).
jefe(marco,sofia).
jefe(carlos).
jefe(luis).
jefe(esther).
jefe(julio).
jefe(marco).

%Regla Recursiva
superior(A,B):-jefe(A,B).
superior(A,B):-jefe(A,X), superior(X,B).

%Regla_And
subordinado(B,A):-jefe(A,B).
supervisor(A,C):-jefe(A,B),jefe(B,C).
colega(B,C):-jefe(A),jefe(A,B),jefe(A,C).

%Regla_Or
departamento(A,B):-jefe(A,B);subordinado(A,B);colega(A,B);supervisor(A,B).

