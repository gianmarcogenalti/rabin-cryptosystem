function b = mylegendre(m,p)
%Given an integer m coprime with an odd prime p, this function returns the
%Legendre Symbol (m/p)
[ym,yp,GCD] = euclid2(m,p);
if GCD ~= 1
    error('This m is not suitable for this kind of computation since not coprime with p');
end
b = 0;
if mod(m,p) ~= 0
    exp = (p-1)/2;
    b = 1;
    for i = 1:exp
        b = mod(b*m,p);
    end
    if b == p - 1
        b = -1;
    end
end
end

