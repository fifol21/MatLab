
clear all; close all; clc;

if(1)
  x  = [-3, -1 ,0, 1,2, 3]; y = [1, 0.5, 1, 2,3,1];  % zadane punkty = wezly
  xi = [-4: 0.01 : -2 , -2:0.05:2, 2:0.01:4];                    % gdzie obliczyc nowe wartosci funkcji
else
  x = [ 5, 6, 8, 11 ]; y = [ -2, 3, 7, 10 ];  % temperatura w Krakowie
  xi = [4: 1/12 : 12];
end

[yi,a] = funTZ_lagrange(x,y,xi);  % nasza funkcja interpolujaca

yii = polyval(a,xi);               % oblicz wartosci wielomianu "a" w punktach "xi" 
a,                                 % obliczone wsp. wielomianu: aN,...,a1,a0
figure; plot(x,y,'ro',xi,yi,'b-',xi,yii,'k-'); title('y=f(x)');   % rysunek

% tak zwiekszenie liczny punktow ma znaczenie na polepszenie, a zwiekszenie
% gestosci na brzegach jest kluczowe szegolnie gdy mamy funkcje nieliniowa,
% i szybkie wzorsty sa na krancach przedzialow