/*Una empresa está buscando candidatos para varios de sus sectores. Con los requerimientos de cada sector, se arma
este programa Prolog:*/
/*1) proyectos: pueden andar ingenieros con experiencia y también abogados jóvenes.
2) logística: pueden andar profesionales que o bien sean jóvenes o bien hayan trabajado en Omni.
3) Agregar postulantestales que uno pueda andar para proyectos pero no para logística otro pueda andar para ventas
pero no para contaduría.*/

puedeAndar(logistica,P):- profesional(P), (joven(P);trabajoEn(P,omni)).
puedeAndar(proyectos,P):- (ingeniero(P),conExperiencia(P));(abogado(P),joven(P)).
puedeAndar(comercioExterior,P):- habla(P,ingles), habla(P,frances), profesional(P).
puedeAndar(comercioExterior,P):- ambicioso(P).
puedeAndar(contaduria,P):- contador(P), honesto(P).
puedeAndar(ventas,P):- ambicioso(P), conExperiencia(P).
puedeAndar(ventas,lucia).
ambicioso(P):- contador(P), joven(P).
profesional(P):- contador(P).
profesional(P):- abogado(P).
profesional(P):- ingeniero(P).
conExperiencia(P):- trabajoEn(P,_).

contador(roque).
joven(roque).

honesto(roque).

ingeniero(ana).
abogado(cecilia).

trabajoEn(roque,acme).
trabajoEn(ana,omni).
trabajoEn(lucia,omni).

habla(roque,frances).
habla(ana,ingles).
habla(ana,frances).
habla(lucia,ingles).
habla(lucia,frances).
habla(cecilia,frances).

/*
1) A partir de esta base indicar para cada una de estas consultas, pensar si la respuesta de Prolog va a ser "sí" o "no",
justificando si es "no". Verificar después con el SWI Prolog.
1) Roque ¿puede andar para comercio exterior?
	Si, por ser ambicioso.
2) Ana ¿puede andar para comercio exterior?
	Si, por ser profesional y hablar Inglés y Frances.
3) Lucía ¿puede andar para comercio exterior? Roque ¿puede andar para contaduría?
	Lucía no puede andar en comercio exterior por no ser profesional.
    Roque puede andar en contaduría porque es un contador honesto.
4) Roque ¿puede andar para ventas?
	Si, porque es ambicioso y tiene experiencia trabajando.
5) Lucía ¿puede andar para ventas?
	Si, por ser Lucía.
2) Agregar la información para las búsquedas de estas secciones:
1) proyectos: pueden andar ingenieros con experiencia y también abogadosjóvenes.
2) logística: pueden andar profesionales que o bien sean jóvenes o bien hayan trabajado en Omni.
3) Agregar postulantestales que uno pueda andar para proyectos pero no para logística otro pueda andar para ventas
pero no para contaduría.*/

/*Falta el ultimo punto!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!
!!!!!*/