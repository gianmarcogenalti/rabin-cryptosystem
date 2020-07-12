function [ya,yb,GCD] = euclid2(a,b)
%EUCLID 
%Extended Euclid's algorithm in dimension 2. Given integers p and q,
%returns the greatest common divisor and the coefficients yp and yq s.t
%yp*p + yq*q = GCD(p,q)
r(1) = max(a,b);
r(2) = min(a,b);
s(1) = 1;
s(2) = 0;
t(1) = 0;
t(2) = 1;
j = 2;
while r(j) ~= 0
    r(j+1) = mod(r(j-1),r(j));
    q(j) = (r(j-1)-r(j+1))/r(j);
    s(j+1) = s(j-1)-q(j)*s(j);
    t(j+1) = t(j-1)-q(j)*t(j);
    
    j = j+1;
end
% disp(r)
% disp(s)
% disp(t)
GCD = r(j-1);
if max(a,b)== a
    ya = s(j-1);
    yb = t(j-1);
else
    ya = t(j-1);
    yb = s(j-1);
end

end


