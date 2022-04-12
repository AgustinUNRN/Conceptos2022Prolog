materia(am1).
materia(sysop).
materia(pdp).
alumno(clara).
alumno(matias).
alumno(valeria).
alumno(adelmar).

estudio(clara,am1).
estudio(clara,sysop).
estudio(clara,pdp).
estudio(matias,pdp).
estudio(matias,am1).
estudio(valeria, pdp).
estudioso(Alumno):-alumno(Alumno), 
    forall(materia(Materia), estudio(Alumno, Materia)).
