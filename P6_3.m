clear all; close all; clc;


x = [ 1       2      3      4      5      6      7];
y = [ 0.912   0.945  0.978  0.997  2.013  1.035  1.057 ];
figure; plot( x, y, 'b*' ); title('y=f(x)'); grid; pause

% Aproksymacja linia prosta: y = a * x + b
if(1)               
  xt = x'; yt = y'; N = length( xt );            % zamiana na kolumny     %    X      *   ab
  X = [ xt, ones(N,1) ];    % macierz sklada sie z x i 1 ( dla wyrazu wolnego b)     
  ab = X \ yt;           % rozklad macierzy na a i b i przypisywanie ich               
  a = ab(1), b = ab(2),       
else                  
  xm = mean( x );              % metoda najmniejszych kwadratow 
  ym = mean( y );           
  xr = x - xm;               
  yr = y - ym;                 % korzystamy z wzory na odchylenie prostej (a)
  a = (xr * yr') / (xr * xr');
  b = ym - a * xm;              
end
figure; plot( x, y, 'b*', x, a*x+b, 'k-' ); title('y=f(x)'); grid; pause
p = polyfit( x, y, 3),        
figure; plot( x, y, 'b*', x, polyval(p,x), 'r-' ); title('y=f(x)'); grid; pause
