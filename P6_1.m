clear all; close all; clc;

A = [2,1;3,9;1,2;3,2];
b= [11;23;31;32];

c =inv( A.' * A);
d = A.' * b;

x = c*d;
disp("x= "+ x);
