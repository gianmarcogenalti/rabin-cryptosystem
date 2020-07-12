function M = decrypter_mod(c,p,q)
%Modified version of the classical decrypter for Rabin's Cryptosystem. Here
%we use additional information to retrieve the correct root amidst the four
%candidates. 
n = p*q;
%% Retrieving b1 and b2 from c
r = dec2bin(c);
b1 = r(2);
if b1 == '0'
    b1 = -1;
else
    b1 = 1;
end
b2 = r(3);
nr = r(4:length(r));
c = bin2dec(nr);
%% Using the additional information to compute and return the information
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

m(1) = crt(b1*mp,mq,p,q);
m(2) = n - m(1);
if mod(m(1),2) == 1
    odd = m(1);
    even = m(2);
else
    odd = m(2);
    even = m(1);
end

if b2 == '1'
    M = odd;
else
    M = even;
end

end

