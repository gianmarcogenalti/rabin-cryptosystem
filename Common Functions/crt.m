function xm = crt(c1,c2,a,b)
%Chinese Remainder Theorem
%Applies the chinese remainder theorem over the system
%x = c1 (mod a)
%x = c2 (mod b)
%given c1, c2, a, b and returns the solution xm
[ya,yb,GCD]=euclid2(a,b);
if(GCD ~= 1)
    error("a and b are not coprimes!")
end
n = a*b;
xm = mod(a*ya*c2 + b*yb*c1,n);
end

