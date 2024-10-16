clear all;
close all;
clc;
fx1 = zeros(1, 16); 
fx2 = zeros(1, 16);

for p = 0:15
    x= 10.^(p+1);
    fx1(p+1) = sqrt(x)*(sqrt(x+1) - sqrt(x));
    fx2(p+1) = sqrt(x)/(sqrt(x+1) + sqrt(x));
    fprintf('At x = 10^%d: f1(x) = %e, f2(x) = %e\n', p, fx1(p+1), fx2(p+1));
end
% for 10 to 10
fprintf("another part of excersises")
x = 10^10;

a= sqrt(x+1),
b=sqrt(x),

a+b,
a-b,



