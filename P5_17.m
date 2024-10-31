
clear all; close all; clc;

 load('babia_gora.dat'); X=babia_gora;

figure; grid; plot3( X(:,1), X(:,2), X(:,3), 'b.' ); pause

x = X(:,1); y = X(:,2); z = X(:,3);            
xvar = min(x) : (max(x)-min(x))/200 : max(x);   %rownomierne rozlozenie punktow 
yvar = min(y) : (max(y)-min(y))/200 : max(y);  % roznomierne rozlozenie punkto

[Xi,Yi] = meshgrid( xvar, yvar );              % siatka interpolacji xi, yi
out = griddata( x, y, z, Xi,Yi, 'v4' );     % intrepolacja cubic- tworzy nam tutaj galdka powierznie 
figure; surf( out ); pause                     %surface pokazuje kolory jako wysokosc, skupia sie na zrozumieniu krztaltu          
figure; mesh( out ); pause                    %meshgrid pokazuje bardziej siatke, skupia sie na topologi
% zdjecie pokzane metody spline (v4) , linear , cubic , nearest i chat 