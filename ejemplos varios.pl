/*ejemplo*/
persona(roque).
persona(pepe).
persona(luis).

amargo(radicheta).
amargo(cebada).

esDulce(chocolate).
esDulce(caramelo).


leGusta(roque,chocolate).
leGusta(pepe,cebada).
leGusta(luis, caramelo).
% ... y muchos hechos más que describen los gustos de un grupo de personas

colorDePelo(roque,colorado).
colorDePelo(pepe,castanio).
% ... etc. con los colores de pelo

vive(roque,buenosAires).
vive(pepe,mendoza).
vive(luis,moron).
% ... y donde vive cada persona de la que queremos hablar

ciudadGrande(buenosAires).
ciudadGrande(mendoza).
% ... y así todas las ciudades grandes

esTierno(Persona):- persona(Persona), forall(leGusta(Persona, Alimento), esDulce(Alimento)).
