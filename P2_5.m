clear all;
clear all;
clc;

function Bits = num2bitstr(num)
bits = typecast(num , 'uint32');
Bits = dec2bin(bits, 32);
end

function bitStr = hex2bitstr(hexStr)
bitStr = dec2bin(hex2dec(hexStr),64);
end


disp('FLOAT: Dokladnosc');
disp('1 + 2^(-24)'); num2bitstr( single( 1 + 2^(-24) )),
disp('1 + 2^(-23)'); num2bitstr( single( 1 + 2^(-23) )),
disp('1 + 2^(-22)'); num2bitstr( single( 1 + 2^(-22) )),
disp('1 + 2^(-21)'); num2bitstr( single( 1 + 2^(-21) )),
disp('1 + 2^(-21) + 2^(-23)'); num2bitstr( single( 1 + 2^(-21) + 2^(-23) )),
disp('1 + 2^(-53) + 2^(-53) '); hex2bitstr( num2hex( 1 + 2^(-53) + 2^(-53) )),
disp(' 2^(-53) + 2^(-53) + 1 '); hex2bitstr( num2hex( 2^(-53) + 2^(-53) + 1 )),
disp(' ');