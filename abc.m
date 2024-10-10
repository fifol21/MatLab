function y = abc(x)
    y = zeros(size(x));
    for krok = 1:size(x,2)
        y(krok)= x(krok)^2 +5;
    end

end