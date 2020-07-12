function m = decrypter(c,p,q,n)
%DECRYPTER
%Given a cypher message c and the private key (p,q) returns the four 
%roots of m^2
if nargin == 3
    n = p*q;
end
ep = (p+1)/4;
eq = (q+1)/4;
mp = 1;
mq = 1;
for i = 1:ep
    mp = mod(mp*c, p);
end
for i = 1:eq
    mq = mod(mq*c, q);
end
m(1) = crt(mp,mq,p,q);
m(2) = n - m(1);
m(3) = crt(-mp,mq,p,q);
m(4) = n - m(3);
end

