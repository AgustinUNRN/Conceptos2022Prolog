/*Ejercicio 5
Escribir un programa Prolog que responda consultas acerca de cuáles son los rivales de una determinada selección en
un campeonato mundial. Una selección tiene como rivales todos los otros equipos de su mismo grupo (¡nunca contra
sí misma!).
Incluir en el programa la siguiente información:
• El grupo A está formado por Colombia, Camerún, Jamaica e Italia.
• El grupo B está formado por Argentina, Nigeria, Japón y Escocia.
El programa debe ser capaz de responder, p.ej., a la siguiente consulta:
¿cuáles son los rivales de Argentina?
otorgando como respuestas "Nigeria", "Japón" y "Escocia".}*/
seleccion(colombia,grupoA).
seleccion(camerun,grupoA).
seleccion(jamaica,grupoA).
seleccion(italia,grupoA).
seleccion(argentina,grupoB).
seleccion(nigeria,grupoB).
seleccion(japon,grupoB).
seleccion(escocia,grupoB).


rivales(A):- seleccion(A,G), seleccion(S,G),S\=A. 

%seleccion(argentina,G), seleccion(S,G),S\=argentina. 

%esTierno(Persona):- persona(Persona), forall(leGusta(Persona, Alimento), esDulce(Alimento)).


%esTierno(Persona)


