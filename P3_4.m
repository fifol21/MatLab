
clear all;
close all;
%Parametry
M=3; %liczba wag systemu/ukladu/kanalu
w=[0.5,1.0,1.5] % wagi
N= M+(M-1), %o długość sygnału wymagana do identyfikacji wag. Jest to długość równa liczbie wag plus długość potrzebna do pełnej konwolucji
t=0:1:N-1; %czas sygnalu
    %p=rand(1,N), %wejscie-probki pilota(random (0-1)
     % y=conv(p,w); %wejscie p(n)--> wyjscie y(n): splotwejscia zwagami ukladu(splata ze soba dwa wektory (p i w)
p=square(2*pi *1 *t/N); %stgnal prostokatny
y=conv(p,w);
for m=0:M-1 % czyli od 0 do M wykonuje sie dokladnie M razy
P(1+m,1:M)=p(M+m:-1:1+m), %wybieramy 1 wiersz i kolumny od 1 do 3=od najwiekszego induksu do najmniejszego
end
y= y(M:M+M-1); %wybieramy fragmeny wyjscia o dlugosci M
west=inv(P)*y'% obliczenie w z wzoru
%Estymacjaliczbnadanych
x=rand(1,M); %wejscie-probkinieznane
y=conv(x,w); %wyjscie-splotwejsciazwagamiukladu
W=zeros(M,M); %inicjalizacja
for m=0:M-1
W(1+m,1:1+m)=w(1+m:-1:1);% 1+m wiersz , 1:1+m kolumny od 1 do 1+m -> 1+m i od 1 wiersza potem lecimy np 3,2,1
end
y= y(1:M);
xest=inv(W)*y';
xerr= x'-xest,