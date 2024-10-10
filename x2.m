clearvars all;
close all;
clc;



x=-3:0.1:3;
f = abc(x);
f1 = wielomian(x);
plot(x,f);
xlabel("x");
ylabel("f(x)");
title("wykres");
hold on;
plot(x,f1);