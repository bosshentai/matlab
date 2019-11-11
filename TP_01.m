clear all ; close all;
N = 1024; %dimensao da amostra
t1 = 0;   % tempo inicial 
tn = 2;   % tempo final 
 
t  = linspace(t1,tn,N) ; % gerando o intervalo d tempo com 1024 amostras 

Distancia_tempo = t(2) - t(1); % Distancia entre 2 amostra  [t(n) - t(n-1)]

%Distancia_tempo2 = t(3) - t(2); % distancia entre 2 amostra

range =  tn - t1 ;  % Diferença  entre  extremos do vector tempo

Distancia_tempo3 = range/N; % calculo da distancia entre cada amostra 

t_S_linspace = [t1: Distancia_tempo3 : tn]; % intervalo de tempo sem usar linspace





tl_2 = -2 ; % tempo inicial 
 tn_2 = 2 ; % tempo final 

 
 
t_2 =  linspace(tl_2,tn_2,N); % gerando um novo intervalo de tempo com 1024 

Distancia_tempo2 = t_2(2) - t_2(1); % Distancia entre cada amostra 

range2 = tn_2 - tl_2;  % Diferença entre extremos do vector tempo 

Distancia_tempo4 = (range2/N); % calculo da distancia entre cada amostra 

t_S_linspace_2 = [tl_2 : Distancia_tempo4 : tn_2 ]; % intervalo de tempo sem usar linspace


%2) 

f0 = 10; % frequencia 
st = sinal_amostral(f0,t); % gera o sinal amostral  frequencia 10 hz no intervalo [0,2]



%3) 
A = 4.3 ;  % amplitude 
st = A * sinal_amostral(f0,t); % gera o sinal amostral com amplitude 4.3 frequencia 10hz no intervalo [0,2]

st_2 = A * sinal_amostral(f0,t_2); % gera o sinal amostra frequencia 10hz no intervalo [-2,2]


%4)
alpha = 2 ;
g = sinal_g(alpha,t);

g_2 = sinal_g(alpha,t_2); 

%5) 
figure('Name','Sinais Amostrais Para tempo 0 a 2 ','NumberTitle','off');
subplot(3,1,1)
hold on 
plot(t,st,...
    'blue');
title('s(t)');
xlabel('Tempo(s)'); 
ylabel('Amplitude (Hz)')
hold off
subplot(3,1,2)
hold on 
plot(t,g,'red')
title('g(t)');
xlabel('Tempo(s)');
ylabel('Amplitude (Hz)');
hold off

subplot (3,1,3)
hold on 
plot(t,st,'blue');
plot(t,g,'red');
xlabel('Tempo(s)');
ylabel('Amplitude (Hz)');
legend('s(t)','g(t)');
hold off



figure('NAme','Sinais Amostrais para tempo -2 a 2 ','NumberTitle','off');
subplot(3,1,1)
hold on 
plot(t_2,st_2,...
    'blue');
title('s(t)');
xlabel('Tempo(s)');
ylabel('Amplitude (Hz)')
hold off
subplot(3,1,2)
hold on 
plot(t_2,g_2,'red')
title('g(t)');
xlabel('Tempo(s)');
ylabel('Amplitude (Hz)');
hold off

subplot (3,1,3)
hold on 
plot(t_2,st_2,'blue');
plot(t_2,g_2,'red');
xlabel('Tempo(s)');
ylabel('Amplitude (Hz)');
legend('s(t)','g(t)');
hold off



%6)

ht= g .* st; 
ht_2 = g_2 .* st_2;

figure('Name','Multiplicação de 2 sinais amostrais  h(t)','NumberTitle','off' );
subplot(2,1,1)
hold on 
plot (t,ht)
ylabel('Amplitute(Hz)');
xlabel('Tempo ');
title('h(t) no intevalo de tempo [0 2]');
hold off
subplot(2,1,2)
hold on
plot(t_2,ht_2)

ylabel('Amplitute(Hz)');
xlabel('Tempo ');
title('h(t) no intevalo de tempo [-2 2]');
hold off

