clear all; clc;
p= 2027;
q = 1759;
n = p*q;

m1 = 2567652; %Necessarily less than n
m2 = 'Walking across the sitting-room, I turned the television off';

fprintf('First message to encrypt is: %d%.', m1);
fprintf('\n')
fprintf('Second message to encrypt is: %s%.', m2); fprintf('\n')

c1 = encrypter_mod(p,q,m1);

fprintf('The first message was encrypted to: %d%', c1);
fprintf('\n')

dm2 = double(m2);
for i = 1:length(dm2)
    c2(i) = encrypter_mod(p,q,dm2(i));
end

fmt = ['The second message was encrypted to : [', repmat('%g, ', 1, numel(c2)-1), '%g]\n'];
fprintf(fmt, c2);
fprintf('\n');

de1 = decrypter_mod(c1,p,q);

fprintf('The first message was decrypted to: %d%', de1);
fprintf('\n')

for i = 1:length(dm2)
    d2(i) = decrypter_mod(c2(i),p,q);
end
de2 = char(d2);

fprintf('The second message was decrypted to: %s%', de2);
fprintf('\n')



