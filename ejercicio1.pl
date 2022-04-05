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
    b. ¿Quiere Manuel a María y a Pedro?
    c. ¿Quiénes son los que quieren a María?
    d. ¿Quiénes son los que se quieren mutuamente?
    e. ¿Quiénes son los que se quieren a sí mismos?
    f. ¿Se quiere Manuel a sí mismo?
    g. ¿Hay alguien que quiera a alguien?
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

                    %Todos quieren a Juan y a María.
                    %Alguien quiere a Juan y a Pedro.
                    %Alguien quiere a María.
                    %Alguien quiere a todos los demás.
