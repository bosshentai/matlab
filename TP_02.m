clear all; close all;
%1) representação de  un dirac 
tempo_inicial= 0;
tempo_final = 10 ;
localizasao = 3;

Amostra  = tempo_final - tempo_inicial +1;

t = linspace(tempo_inicial,tempo_final,Amostra);


ex = dirac_unidade(tempo_inicial,tempo_final,localizasao);



ex2 = dirac(t);
idx  = ex2 == Inf; % encontrar o inf
ex2(idx) =  0;
ex2(localizasao+1) = 1;% set inf to finite value 




figure('Criando um dirac ')
subplot(2,1,1),stem(t,ex);


subplot(2,1,2),stem(t,ex2), xlim([0 10]);