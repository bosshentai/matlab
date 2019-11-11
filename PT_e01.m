A  = [2 1 ; 1 2] ;

% a)  b = A * A 

B = A * A;

% b) c = produto ponto a ponto A com A 

C = A .* A ; 


% c) calcule A.^-1

D1 = A^(-1);

% d) inverso ponto a ponto de A  , 1/A 

 D = inv(A);
 
 
 %  e) faça um rotaçao Vertical das linas da matriz 
    
 E = fliplr(A);
 
 
 % f) faca um rotaçao horizontal das colunas da matriz 
 
 F = flipud(A) ;
 