
clear all;
close all;
%zamiana polegala na dodaniu jednego zrodla napiecia i rezystora
Ze=10; Zs1=13; Zs2=20; Zd=27; Zo=35;
U1=3; U2=5; U3=7; E=15;
Z=[1/Ze + 1/Zs1, -1/Zs1, 0; -1/Zs1, 1/Zs1 + 1/Zs2 + 1/Zd , -1/Zs2; 0,-1/Zs2 , 1/Zs2 + Zo]
b= [E/Ze;0;0]


x1=inv(Z)*b; 
x2=pinv(Z)*b; 
x3=Z\ b; 

for k=1:length(b) % metoda cramera
Zk=Z; Zk(:,k)= b;
x4(k)=det(Zk) /det(Z);
end
x4=x4.';
[x1,x2,x3,x4],