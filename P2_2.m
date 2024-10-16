clear all;
close all;
clc;

a=fi( 1.625,0,8,7), a.bin,
b=fi( 0.375,0,8,7), b.bin,
c=fi( 0.375,1,8,7), c.bin,
d=fi(-0.375,1,8,7), d.bin,

PI_8 = fi(pi,0,8,5), PI_8.bin,
PI_8Z = fi(-pi,1,8,5), PI_8Z.bin,

PI_16 = fi(pi,0,16,12), PI_16.bin,
PI_16Z = fi(-pi,1,16,12), PI_16Z.bin,

%konwersja na normalna

PI_N_8 = double(PI_8), 
error_pi_8 = abs(pi - PI_N_8),

PI_N_16 = double(PI_16),
error_pi_16 = abs(pi - PI_N_16),