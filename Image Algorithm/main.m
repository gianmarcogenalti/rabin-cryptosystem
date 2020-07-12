%% Rabin cryptosystem implementation
% Choose p, q prime numbers s.t. p = 3 (mod 4) and q = 3 (mod 4) and an
% image, compute the public key n = p*q then call encrypter.m on each pixel
% of the image to encrypt it using the public key. You can then decrypt the
% image using the private key (p,q) over each pixel. We choose the lowest
% root from the four proposed by the decrypter.
%% Environment definition
clear all; clc;
p= 2027;
q = 1759;
n = p*q;
img = 'M_O_Rabin';
type = 'jpg';
%% Image reading
A = imread(img,type);
%% Colour sectioning
B1 = int64(A(:,:,1));
B2 = int64(A(:,:,2));
B3 = int64(A(:,:,3));
%% Image encryption
for i = 1:size(B1,2)
    for j = 1:size(B1,1)
        C1(j,i) = encrypter(n,B1(j,i));
        C2(j,i) = encrypter(n,B2(j,i));
        C3(j,i) = encrypter(n,B3(j,i));
    end
end
Cs1 = uint8(mod(C1,255));
Cs2 = uint8(mod(C2,255));
Cs3 = uint8(mod(C3,255));
Cs(:,:,1) = Cs1;
Cs(:,:,2) = Cs2;
Cs(:,:,3) = Cs3;
imshow(Cs);
cname = strcat('encrypted_',img,'.jpg');
imwrite(Cs, cname);
%% Image decryption and decrypted image visualization
for i = 1:size(B1,2)
    for j = 1:size(B1,1)
          D1(j,i) = min(decrypter(C1(j,i),p,q,n));
          D2(j,i) = min(decrypter(C2(j,i),p,q,n));
          D3(j,i) = min(decrypter(C3(j,i),p,q,n));
    end
end
Ds1 = uint8(D1);
Ds2 = uint8(D2);
Ds3 = uint8(D3);
Ds(:,:,1) = Ds1;
Ds(:,:,2) = Ds2;
Ds(:,:,3) = Ds3;
imshow(Ds);
dname = strcat('decrypted_',img,'.jpg');
imwrite(Ds, dname);