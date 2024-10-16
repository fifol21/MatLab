clear all; 
close all;

function bitstr = num2bitstr(num)
    bits = typecast(num,'uint32'); %zamiana liczby na format 32 bitowy bez zmiany bitow
    
    bitstr = dec2bin(bits,32); %reprezemtacja binarna
end
function bitstr64 = num2bitstr64(NUM)
    bits64 = typecast(NUM ,"uint64");
    bitstr64 = dec2bin(bits64,64);
end


Num1 = ( single( (1+1/4)*2^(-124) ));
Num2= ( single( -5.877472*10^(-38) ));

bitnum1 = num2bitstr(Num1),
bitnum2 = num2bitstr(Num2),


c=num2bitstr(single(299792458)),
c_1 =num2bitstr64(double(299792458)),

% czes 2 zadania

function real_val = bin2num(c)
% podzial na 2 partie
sing_bit = c(1);
exp_bit = c(2:9);
fract_bit = c(10:32);

if sing_bit == '1'
    sign = -1;
else 
    sign = 1; % gdy bedzie 0 
end
   exponent =bin2dec(exp_bit) -127; 
fraction = 1.0;
for i=1:length(fract_bit)
    fraction =  fraction + str2double(fract_bit(i))*2^(-i); % konwertuje pojedynczy element str na double
end

real_val = sign * fraction * 2^exponent; 

end
wwynik = bin2num(c),