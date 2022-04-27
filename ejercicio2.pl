/*Cree las reglas en necesarias para representar un árbol genealógico utilizando únicamente el predicado 
padres(<nombre padre>,<nombre madre>,<nombre hijo>). Incluya datos de su propio 
árbol genealógico (incluyendo, al menos, datos de abuelos, padres, nietos, y bisnietos).
    1) Indique el objetivo que permite responder la pregunta ¿Quién es padre de quién?
        padres(PAPA,MAMA,HIJO).
    2) Incluya una regla que represente el parentesco de hermandad.
    3) ¿Puede aumentarse la potencia del predicado anterior con una regla que nos diga explícitamente que la propiedad de ser hermanos es conmutativa (es decir, que, si X es hermano de Y, entonces Y es hermano de X)?
    4) Incluya una regla (o varias) que represente los abuelos paternos y maternos.
    5) Establezca los objetivos necesarios para responder las siguientes preguntas:
        a) ¿Cuáles son todos los abuelos de cada persona?
        b) ¿Cuáles son todos los nietos de cada persona?
    6) ¿Cuáles son los ascendientes de una persona? (se necesita recursividad). 
    minuto 40*/

padres(lautaro,paula,maria).%abuelos maternos y madre maria
padres(juan,sofia,jorge).%abuelos paternos y padre jorge
padres(juan,sofia,tamara).%abuelos paternos y tia tamara
padres(jorge,maria,sergio).%sergio
padres(sergio,marcela,uriel).%hijo de sergio
padres(uriel,carolina,micaela).%nieto de sergio

%Regla de hermandad
hermandad(YO,HERMANO):-padres(PAPA,MAMA,YO),padres(PAPA,MAMA,HERMANO).

%Regla de abuelos paternos y maternos
abuelosP(YO):-padres(PAPA,MAMA,YO),padres(ABUELO,ABUELA,PAPA).
abuelosM(YO):-padres(PAPA,MAMA,YO),padres(ABUELO,ABUELA,MAMA).

%a) ¿Cuáles son todos los abuelos de cada persona?

abuelos(YO):-abuelosP(YO);abuelosM(YO). %///////////////////// Falta

%b) ¿Cuáles son todos los nietos de cada persona?
nietos(YO):- (padres(YO,PAREJA,HIJO);padres(PAREJA,YO,HIJO)),(padres(HIJO,PAREJAH,NIETO);padres(PAREJAH,HIJO,NIETO)).

% 6) ¿Cuáles son los ascendientes de una persona? (se necesita recursividad). ///////////////////// Falta aprender recursividad
%factorial(N,M):- N>0, X is N-1, factorial(X,Y), M is N*Y.
ascendientes(YO) :- padres(PAPA,MAMA,YO).
ascendientes(YO) :-(padres(YO,PAREJA,HIJO);padres(PAREJA,YO,HIJO)),ascendientes(PAPA,MAMA,YO).


