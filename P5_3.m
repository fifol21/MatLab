clear all; close all;clc;

N = 6;                    % stopien wielomianow
i  = (0 : N)';            % zmienna "i" wielomianu w wezlach ("rzadka") 
xi = cos( 2*pi/N * i );   % wartosci funkcji x=kosinus w wezlach
yi = sin( 2*pi/N * i );   % wartosci funkcji y=sinus   w wezlach
[ i, xi, yi ], pause      % sprawdzenie wartosci

X = vander(i), pause      % wygenerowanie i pokazanie macierzy Vandermonde'a

ax = inv(X) * xi,       % obliczenie wielu wsp. wielomianu dla zmiennej x  z wzoru X*ax=xi
ay = inv(X) * yi,        % obliczenie wielu wsp. wielomianu dla zmiennej y

id = 0 : 0.01 : N;        % zmienna "i" dokladna 
xd = cos( 2*pi/N * id );  % dokladne wartosci x
yd = sin( 2*pi/N * id );  % dokladne wartosci y

figure; plot( xi,yi,'ko', xd,yd,'r--', polyval(ax,id), polyval(ay,id),'b.-');
xlabel('x'); ylabel('y'); title('y=f(x)'); axis square; grid; pause
figure; plot( i,xi,'ko', id,xd,'r--', id, polyval(ax,id),'b.-');
xlabel('i'); ylabel('x'); title('x=f(i)'); grid; pause

% pierwszy wykres to co drugi wykres
% drugi wykres - kolka punkty wezlowe, czerwona linia dokladne x,niebieska
% linia wartosci wielomianu