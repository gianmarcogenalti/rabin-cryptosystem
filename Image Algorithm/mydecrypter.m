function M = mydecrypter(c,p,q,n)
% Simplified version of rabin decrypter which automatically returns the
% minimum root, suitable in the case of 8-bit messages to encrypt like
% image bits or ASCII converted characters.
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
M = min(m);
end

