clear all; close all; clc;

% Definiujemy wektor x na przedziale [-1, 1]
x = linspace(-1, 1, 100); 

% Inicjalizujemy macierz na wielomiany Czebyszewa
T = zeros(11, length(x));


T(1, :) = 1;        %T0
T(2, :) = x;        %T1


for n = 2:10
    T(n+1, :) = 2 * x .* T(n, :) - T(n-1, :);
end


figure;
hold on;
for n = 0:10
    plot(x, T(n+1, :), 'DisplayName', ['T_' num2str(n) '(x)']);
end
hold off;

% Oznaczenia wykresu
title('Wielomiany Czebyszewa');
xlabel('x');
ylabel('T_n(x)');
legend show;  
grid on;
