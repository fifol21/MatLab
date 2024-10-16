clear all;
close all;
clc;

x=  10^(-50);
y= 10^(100);
z= 10^(200);

disp((x*y)/z),
disp(x*(y/z)),
disp((x/z)*y), % moze byc malo precyzyjne, bo dzielimy przez siebie rozne liczby ( nie maja podobnych wartosci bezwzglednych)