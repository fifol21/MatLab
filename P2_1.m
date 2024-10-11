clear all; close all;
%1 normalny zapis 
%2 pierwszt bit oznacza znak reszta normalnie (modul znak)
%3 negacja bitow (potem +1)(uzuoelnienie do 2)

a=fi( 141,0,8,0), a.bin,
b=fi(115,0,8,0), b.bin,
c=fi( 115,1,8,0), c.bin,
d=fi(-115,1,8,0), d.bin, %=a


a=fi( 21,0,8,0), % bez znaku
disp(a.bin),

b=fi( 21,0,16,0),
disp(b.bin),

c=fi(-21,1,8,0), % ze znakiem negacja bitow ( potem +1)
disp(c.bin), 


