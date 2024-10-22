clear all;
close all;
clc;
load("X.mat");

x=X(:,1);
y=X(:,2);
z=X(:,3);

P2D_in = [x,y];
P3D_in = [x,y,z];
%P2D = [1,1 ;-1,1; -1,-1;1,-1];
%P3D = [1,1,3;2,1,5;3,-1,2;1,-1,1;4,3,2];
alfa = (-45/180 )* pi;
beta  = (90/180)*pi;
gamma = ( 135/180)*pi;


A2D = [cos(alfa),-sin(alfa);sin(alfa),cos(alfa)];
P2_out = (A2D * P2D_in')' ;

% rotacja 3D
A_x = [1,0,0; 0, cos(alfa), -sin(alfa);  0, sin(alfa), cos(alfa)];
A_y = [cos(beta),0,sin(beta) ; 0,1,0 ; -sin(beta),0,cos(beta)];
A_z = [cos(gamma),-sin(gamma),0 ; sin(gamma),cos(gamma),0;0,0,1];

A3D = A_x * A_y * A_z;

P3_out = (A3D * P3D_in')';

figure;
plot(P2D_in(:,1),P2D_in(:,2),'r');
title("2D przed obrotem");
grid;

figure;
plot(P2_out(:,1),P2_out(:,2),'b');
title("2D po obrocie");
grid;

figure;
plot3(P3D_in(:,1),P3D_in(:,2),P3D_in(:,3),'b');
title("3D przed obrotem");
grid;

figure;
plot3(P3_out(:,1),P3_out(:,2),P3_out(:,3),'g');
title("3D po obrocie");
grid;

