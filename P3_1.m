clear all;
close all;

A=[1,2,3 ; 4,5,6 ; 7,8,9];
u=[1;2;3];
v=[4;5;6];
a=5;


(u.')*v, 
(u') *v,
B=u*(v.'),
A+B,
A*B,
B*A,
(u.')*A,
A*u,
a*A,
(A+B)*u
A*u+B*u;
B*u+A*u
inv(A),
poly(A),
det(A),
rank(A),
(v.')*A*v,

