/*- PROPIEDADES -*/
/* ing(Ingeniero) <- Ingeniero es el nombre de un Ingeniero*/
ing(lanchipa).
ing(patrick).
ing(elard).

/* asig(Asignatura) <- Asignatura es el nombre de una asignatura */
asig(operativos).
asig(programacion).
asig(disenio).

/* dia(Dia) <- Dia es un día de la semana que hay alguna clase */
dia(lunes).
dia(miercoles).
dia(jueves).

/*- RELACIONES -*/
/* r1(Ingeniero,Asignatura) <- Ingeniero imparte la Asignatura */
r1(lanchipa,programacion).
r1(Ingeniero,Asignatura) :- ing(Ingeniero), 
	Ingeniero\=lanchipa,asig(Asignatura).

/* r2(Ingeniero,Dia) <- Ingeniero imparte sus clases el Dia de la semana */
r2(elard,Dia) :- dia(Dia), Dia\=lunes.
r2(Ingeniero,Dia) :- ing(Ingeniero), 
	Ingeniero\=elard,dia(Dia).

/* r3(Asignatura,Dia) <- Asignatura se imparte el Dia de la semana */
r3(operativos,Dia) :- dia(Dia), Dia\=lunes, Dia\=jueves.
r3(programacion,Dia) :- dia(Dia), Dia\=lunes.
r3(Asignatura,Dia) :- asig(Asignatura),
 Asignatura\=operativos,
 Asignatura\=programacion, 
 dia(Dia).