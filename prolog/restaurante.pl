%Hechos

entrada(antipasto).  
entrada(sopa).  
entrada(quesos). 

carne(milanesa).  
carne(bife_de_chorizo).  
carne(pollo_asado).  

pescado(congrio). 
pescado(pejerey).

postre(flan). 
postre(helado). 
postre(fruta). 

% Reglas
% plato_principal(P) :- carne(P).  
% plato_principal(P) :- pescado(P).  

plato_principal(P) :- carne(P); pescado(P).  