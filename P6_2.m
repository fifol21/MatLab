clear all; close all; clc;

A = [2,1;3,9;1,2;3,2];
b= [11;23;31;32];

[Q,R] = qr(A);
R,

%Ax=b -> QRx=b -> Rx = Q' * b -> Rx = r2  --> r2= Q' *b

r2 = Q' * b,
R1 = R(1:2,1:2);
r2_final = r2(1:2);

x = R1\ r2_final;
disp("x= "+ x);


