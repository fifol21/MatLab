clear all; close all; clc;

N = 100;  % Liczba punktów czasowych
M = 5;    % Liczba sinusoid i cosinusoid uzytych do aproksymacji

% Przesunięcie fazowe sygnału piłokształtnego
phi = pi / 8;  % np. przesunięcie o pi/4 radiana

% Definicja wektora czasu z przesunięciem fazowym
x = [0 : 2*pi/N : 2*pi*(N-1)/N]';
y = sawtooth(x + phi);  % Przesunięcie sygnału piłokształtnego

% Baza trygonometryczna: sinusy i cosinusy
X_sin = sqrt(2/N) * sin(x * [1:M]);
X_cos = sqrt(2/N) * cos(x * [1:M]);

% Połączymy sinusy i cosinusy w jedną macierz bazową
X = [X_cos, X_sin];  % Pełna baza trygonometryczna

% Rysowanie przykładowej sinusoidy (np. 5-tej kolumny bazy)
figure; plot(X(:,5)); title('5-ta kolumna bazy (cosinus)'); pause;

% Obliczenie współczynników aproksymacji
a = X' * y;

% Aproksymacja sygnału piłokształtnego
y_aprox = X * a;

% Rysowanie sygnału oryginalnego i aproksymowanego
figure;
plot(x, y, 'r.', x, y_aprox); 
grid on;
title('Aproksymacja sygnału piłokształtnego przy użyciu pełnej bazy trygonometrycznej');
legend('Oryginalny sygnał', 'Aproksymacja');

%Dzięki pełnej bazie trygonometrycznej (zarówno sinus, jak i cosinus), aproksymacja sygnału piłokształtnego powinna działać poprawnie nawet w przypadku przesuniętego sygnału.
% Ponieważ sinusoida i cosinusoida różnią się tylko przesunięciem fazowym, pełna baza trygonometryczna pozwala na aproksymację sygnału niezależnie od fazy 

