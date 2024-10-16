clear all;
close all;

a= 2;
b = 269979891,
c = 1;

delta = sqrt(b^2 -4*a*c),
x_1 = (-b-delta)/(2*a),
x_2 = (-b+delta)/(2*a),

if ((abs(x_1)) > (abs(x_2)))
    X1 = x_1;
else
    X1= x_2;
end

    X2 = c/(a*X1),
    X1,