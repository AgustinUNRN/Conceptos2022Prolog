/*Ejercicio 6
Escribir un programa Prolog que ayude a una agencia matrimonial a armar parejas. Definimos a una pareja como un
par (mujer, varón). La agencia tiene esta información:
• Las mujeres melancólicas son compatibles con los varones serenos.
• Las mujeres decididas son compatibles con los varones reflexivos.
• Las mujeres soñadoras son compatibles con los varones decididos.
• Juan es sereno y decidido.
• María es melancólica.
• Ursula es decidida.
• Juana es soñadora.
• Pedro es reflexivo.
• José es melancólico.
Se pide:
1) Describir la información que maneja la agencia en Prolog de forma tal que se pueda preguntar que son
compatibles. P.ej.
• ante la pregunta sobre si la pareja (María, Juan) es compatible debe responder que sí.
• ante la pregunta sobre si la pareja (Ursula, Juan) es compatible debe responder que no.
2) Agregar al programa la siguiente información:
• Cualquier pareja formada por un decidido y un melancólico es compatible.
Según esta nueva información, la pareja (Ursula, José) es compatible, mientras que si nos remitimos al punto
1) no lo es.
3) Agregar al programa la posibilidad de responder a consultas sobre si una persona es deseable. Decimos que
una persona (varón o mujer) es deseable si es compatible con, por lo menos, dos personas distintas. Según la
información descripta, Juan es deseable mientras que Juana no lo es.*/

varon(juan).
varon(pedro).
varon(jose).
mujer(maria).
mujer(juana).
mujer(ursula).

%• Juan es sereno y decidido.
%sereno(juan).
sereno(juan).
%decidido(juan).
decidido(juan).
%• Ursula es decidida.
decidido(ursula).
%• María es melancólica.
melancolico(maria).
%• José es melancólico.
melancolico(jose).
%• Juana es soñadora.
soniador(juana).
%• Pedro es reflexivo.
reflexivo(pedro).

%pareja(mujer,varon).
pareja(M,V):-mujer(M),varon(V).
%Las mujeres melancólicas son compatibles con los varones serenos.
compatibilidad(M,V):-pareja(M,V),melancolico(M),sereno(V).
%• Las mujeres decididas son compatibles con los varones reflexivos.
compatibilidad(M,V):-pareja(M,V),decidido(M),reflexivo(V).
%• Las mujeres soñadoras son compatibles con los varones decididos.
compatibilidad(M,V):-pareja(M,V),soniador(M),reflexivo(V).
%• Cualquier pareja formada por un decidido y un melancólico es compatible.
compatibilidad(M,V):-pareja(M,V),(decidido(M),melancolico(V);decidido(V),melancolico(M)).
/*Agregar al programa la posibilidad de responder a consultas sobre si una persona es deseable. Decimos que
una persona (varón o mujer) es deseable si es compatible con, por lo menos, dos personas distintas. Según la
información descripta, Juan es deseable mientras que Juana no lo es.*/
deseable(P):-(compatibilidad(P,X);compatibilidad(X,P)),X\=P. %falta la recursibidad para que lo saque 2 veces y que las personas sean distintas xd