clear all;
close all;
clc;

a=fi( 11.25,0,8,4), a.bin,
b=fi( 4.75,0,8,4), b.bin,
c=fi( 4.75,1,8,4), c.bin,
d=fi(-4.75,1,8,4), d.bin,

PI_8 = fi(pi,0,8,6), PI_8.bin,

PI_8Z = fi(-pi,1,8,6), PI_8Z.bin, %znak

PI_16 = fi(pi,0,16,12), PI_16.bin,

PI_16Z = fi(-pi,1,16,12), PI_16Z.bin, %znak

%kowersja 
% 8 bitowe pi
PI_8N = double(PI_8),
errorPI_8 = abs(pi - PI_8N),

%16-bitowe pi
PI_16N = double(PI_16),
errorPI_16 = abs(pi - PI_16N),