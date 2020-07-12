function c = encrypter(n,m)
%ENCRYPTER
%   Given two primes p and q s.t. p=3 (mod 4) q=3 (mod 4) and a message m
%   integer returns the cypher message c encrypted with Rabin algorithm
if m >= n
    error('Message m is too big to encrypt with this n, increase primes and try again')
end
c = mod(m^2,n);
end


