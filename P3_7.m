
clear all ;close all; clc;

%Danewejsciowe
[x,fpr]=audioread('elephant.wav',[1,2^14]); % dane wejsciowe, 2^14 probek , funckja fpr przechowywuje czzestotliowc probkowania, audioread zwaraca sygnal w postaci wektora czasowego
N=length(x);
figure;
plot(x);
title('x(n)');

%Transformacjaliniowa/ortogonalna-ANALIZA
n=0:N-1;k=0:N-1;
A=sqrt(2/N)*cos(pi/N*(k'*n)); % taki zabieg pozwala nam pokazac, jakie czestotliwosci sa dominuajce w sygnale
%x=A(500,:)+A(1000,:);x= x’;
y= A*x;
figure;
plot(y);
title('y(k)');
%Modyfikacjawyniku
y(N/8+1:N,1)=zeros(7*N/8,1);
%y(1:N/8,1)=zeros(1*N/8,1);
%y(1000)=0;
figure;
plot(y);
title('y(k)');
%Transformacjaodwrotna-SYNTEZA
xback= A'*y;
figure;
plot(xback);
title('xback(n)');
soundsc(x,fpr);
pause

soundsc(xback,fpr);