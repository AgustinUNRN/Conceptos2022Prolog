/*Ejercicio 1
Represente los siguientes hechos:
    • Pedro quiere a María.
    • Pedro quiere a Belén. 
    • Pedro Juan

    • Juan Maria
    • Juan quiere a Belén.

    • María quiere a Pedro.
    • Maria Juan

    • Belen Juan
    • Belen Maria

    • Todos quieren a Juan y a María.
    • Alguien quiere a Juan y a Pedro.
    • Alguien quiere a María.
    • Alguien quiere a todos los demás.

A continuación, escriba los objetivos en Prolog necesarios para responder a las preguntas indicadas a continuación:
    a. ¿Quiere Manuel a María?
        quiere(manuel,maria). 
        false.
    b. ¿Quiere Manuel a María y a Pedro?
        quiere(manuel,maria,pedro). 
        false.
    c. ¿Quiénes son los que quieren a María?
        quiere(X,maria).
        X = pedro ;
        X = juan ;
        X = belen.
    d. ¿Quiénes son los que se quieren mutuamente?
    e. ¿Quiénes son los que se quieren a sí mismos?
        quiere(X,X). 
        false.
    f. ¿Se quiere Manuel a sí mismo?
        quiere(manuel,manuel).
        false.
•   Alguien quiere a todos los demás   .
        quiere(alguien,pedro,maria,belen,juan). 
        true.
    g. ¿Hay alguien que quiera a alguien?
        quiere(X,alguien). 
        false.
    h. ¿Hay alguien que quiera a todo el mundo?*/

quiere(pedro,maria). %Pedro quiere a María.
quiere(pedro,belen). %quiere(pedro,belen).
quiere(pedro,juan). %quiere(pedro,juan).

quiere(juan,maria). %quiere(juan,maria).
quiere(juan,belen). %quiere(juan,belen).

quiere(maria,pedro). %quiere(maria,pedro).
quiere(maria,juan). %quiere(maria,juan).

quiere(belen,juan). %quiere(belen,juan).
quiere(belen,maria). %quiere(belen,maria).

quiere(todos,juan,maria). %Todos quieren a Juan y a María.
quiere(alguien,juan,pedro). %Alguien quiere a Juan y a Pedro.
%quiere(alguien,maria). %Alguien quiere a María.
quiere(alguien,pedro,maria,belen,juan). %Alguien quiere a todos los demás.

