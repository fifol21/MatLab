
clear all; close all;clc; 

% Funkcja interpolowana wielomianem i jej parametry
N = 20;                     % liczba znanych punktow funkcji, u nas sinus()
xmax = 1;                % maksymalna wartosc argumentu funkcji (-1,1)
xp = 0.001 : xmax/(N-1) : xmax; % wartosci argumentow dla znanych wartosci funkcji 
xd = 0.001 : 0.001 : xmax;      % wartosci argumentow w punktach interpolacji
yp = log10( xp );             % znane wartosci
yd = log10( xd );             % wartosci w punktach interpolacji - do sprawdzenia 
figure;
plot( xp, yp, 'ro', xd, yd, 'b-'); xlabel('x'); title('y(x)'); grid;pause
% xp punkty interpolacji a xd sinus 


P = N-1; % rzad wielomianu: mamy N=20, wiec musi byc 19 itp
a = polyfit( xp, yp, P ),   % obliczenie wsp. wielomianu interpolujacego

% Interpolacja funkcji w zadanych punktach xi
xi = xd;                    % argumenty punktow interpolacji
yi = polyval(a,xi);         % wartosci w punktach interpolacji
a = a(end:-1:1),            %wczesniej byly zapisane od najwyzszej potegi wiec musimy odwrocic
yi_moje = zeros(1,length(xi));
for k = 1 : N              % sami obliczamy wartosci w punktach interpolacji 
    yi_moje = yi_moje + a(k) * xi.^(k-1);   
end 
max_abs_yi = max( abs( yi - yi_moje) ), pause

figure;
plot( xp,yp,'ro', xd,yd,'g-', xi,yi,'b-' ); xlabel('x'); title('y(x)'); grid; pause
figure;
plot( xd, yd-yi, 'k-' ); xlabel('x'); title('BLAD INTERPOLACJI NR 1'); grid;pause
yis = interp1( xp, yp, xi, 'spline' );
figure;
plot( xp,yp,'ro', xd,yd,'b-', xi,yi,'k-', xi,yis,'k--' );
xlabel('x'); title('y(x)'); grid;
figure;
plot( xd, yd - yis, 'k-' ); xlabel('x'); title('BLAD INTERPOLACJI NR 2'); grid;pause

% gdy zwiekszymy xmax to mamy szersza funckje, czyli na koncach i
% poczatkach moze pojawiac sie oscylacje, ktore powstaja poprzez
% przeblizanie nieliniowej fumckji wielomianem za duzego stopnia(efekt
% Rungego)
% dla log musimy miec wartosc jakas wieksza od 0 zeby dzialalo
%funkcja logarytmiczna szybko rosnie w okolich 0 wiec ciezko odzrowoac
%jednym wielomianem, spine jest bardziej stabilna i daje lepsze odzorowanie
% spine czesto jest lepsza gdy jest duzy zakres i funckje odbiegajace od
% liniwych, bo stosuje kilka wielomianow do przyblizenia
% dla krzywiz duzych lepsza jest spine