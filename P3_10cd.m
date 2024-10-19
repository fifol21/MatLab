
clear all;
close all;
load( 'babia_gora.mat' );
size(data),
alfa = (-45/180 )* pi;
beta  = (90/180)*pi;
gamma = ( 135/180)*pi;



A_x = [1,0,0; 0, cos(alfa), -sin(alfa);  0, sin(alfa), cos(alfa)];
A_y = [cos(beta),0,sin(beta) ; 0,1,0 ; -sin(beta),0,cos(beta)];
A_z = [cos(gamma),-sin(gamma),0 ; sin(gamma),cos(gamma),0;0,0,1];

A3D = A_x * A_y * A_z;

P3D_out = A3D * data';

figure;
plot3(data(:,1),data(:,2),data(:,3),'b');
grid;


figure;
plot3(P3D_out(:,1),P3D_out(:,2),P3D_out(:,3),'r');


grid;