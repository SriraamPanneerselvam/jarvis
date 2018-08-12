clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\pen.jpg');
b=double(a)/255;
c=rgb2gray(a);
subplot(2,1,1);
imshow(c)
title('Original image');
img_dct=dct2(c);
img_pow=(img_dct).^2;
img_pow=img_pow(:);
[B,index]=sort(img_pow);%no zig-zag
B=flipud(B);
index=flipud(index);
compressed_dct=zeros(size(c));
coeff = 20000;% maybe change the value
for k=1:coeff
compressed_dct(index(k))=img_dct(index(k));
end
im_dct=idct2(compressed_dct);
subplot(212)
imshow(im_dct)
title('DCT Compress Image');

