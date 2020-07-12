function c = encrypter_mod(p,q,m)
%Modified version of the classical decrypter for Rabin's Cryptosystem. Here
%we add to our cyphertext informations about the parity and the Jacobi
%symbol
n = p*q;
if m >= n
    error('Message m is too big to encrypt with this n, increase primes and try again')
end
c = mod(m^2,n);
%% Computation of the additional bits
b1 = myjacobi(m,p,q);
if b1 == 1
    b1 = '1';
else
    b1 = '0';
end
r = dec2bin(m);
b2 = r(end);
cr = dec2bin(c);
nr = ['1' b1 b2 cr];
c = bin2dec(nr);
end

