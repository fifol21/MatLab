function y = wielomian(x)
    y=zeros(size(x));
    for krok = 1:size(x,2)
        y(krok) = x(krok)^3+9;
    end
end