imprimir([A|B]):- write(A), nl, imprimir(B). 

/* Agregar un elemento a la cabeza de la pila */
agregarInicio(X,L,[X|L]).

/* Agregar elemento a la cabeza */
inserta(X,L1,L2) :- select(X,L2,L1).


/* Tamaño de una lista */
tamanio([],0).
tamanio([_|Y],N) :- tamanio(Y,M), N is M + 1.

/* Tamaño de la lista */
longitud([],0).
longitud([_|X],N):-longitud(X,M),N is M + 1.


/* Eliminar la cabeza de una lista */
quitaCabeza(X,[X|T],T).

/*Eliminar la cabeza de la lista*/
borrarCabeza([_|Y],Y).

/* Verificar la existencia de 
 * un elemento en la lista */
existe(X,L) :- member(X,L).

 /*Verificar la existencia de un elemento en la lista*/
existe(_,[]):-fail.
existe(X,[X|_]):-!.
existe(X,[_|R]):-existe(X,R).



