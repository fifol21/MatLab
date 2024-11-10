

clear all; close all;

h = [3; -2; 1 ];    % symulowana  odpowiedz impulsowa kanalu
%load h.dat         % rzeczywista odpowiedz impulsowa kanalu
L = length(h);     % liczba wag                           
figure; stem(h,'filled'); title('h(n)'); grid; pause

prbs = 2*round( rand(7*L,1) )-1;                                % pobudzenie kanalu
%prbs=[-1,-1,-1,-1,1,-1,1,-1,1,1,1,-1,1,1,-1,1,-1,1,-1,-1,1]';   % krotkie 
%prbs=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]'; % test dla X
x = [ prbs ];  N = length(x);

r = x(L:-1:1);            % pierwszy wiersz     
c = x(L:N);             % pierwsza kolumna i gdy juz znamy te dwie to mozemy utwotrzuc macierz toeplitza
X = toeplitz(c,r), 
pause    % macierz pobudzenia o strukturze Toeplitza

y = X*h;         % wynik przejscia pobudzenia przez uklad h(n)
SNR=50; y = awgn(y,SNR);    % dodanie szumu, tak aby otrzymac zadany SNR 

he = X \ y;                      % to samo zoptymalizowane obliczeniowo
plot(1:L,h,'ro',1:L,he,'bx'); title('Zadane i obliczone h(n)'); grid; 
pause  