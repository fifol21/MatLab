
clear all;
close all;
%zamiana polegala na dodaniu jednego zrodla napiecia i rezystora
R1=20; R2=30; R3=40; R4=60; R0=65;
E1=3; E2=4; E3=7; E4 = 8;
A= [ R1+R2, -R2, 0 ,0; -R2 ,R2+R3, -R3,0 ;0, -R3 ,R3+R4,0;0,0,-R3,R4+R0], % gdy jest zgodnie z kierunkiem oczka z + przeciwnie z - ( link na yt w zakladce fizyka)
b= [E1-E2;E2-E3;E3-E4;E4 ],

x1=inv(A)*b; % odwracanie macierzy ( dobre tylko gdy macierz jest kwadratowa)
x2=pinv(A)*b; % pseudoinverse uzywana glownie gdy macierz nie jest kwadratowa lub odwracalna
x3=A\ b; % wybiera odpowiedni algorytm najlepszy dla danego problemu

for k=1:length(b) % metoda cramera
Ak=A; Ak(:,k)= b;
x4(k)=det(Ak) /det(A);
end
x4=x4.';
[x1,x2,x3,x4],