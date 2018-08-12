
clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\pen.jpg');
subplot(3,2,1);
imshow(a);
title('original img');
[m,n]=size(a);
b=zeros(m,n);
for i=57:200
    for j=57:200
b(i,j)=1;
    end
end
subplot(3,2,2);
imshow(b);
title('kernal');
z=fft2(a);
subplot(3,2,3);
imshow(z);
title('fft');
y=fftshift(b);
subplot(3,2,4);
imshow(y);
title('fftshift');
x=z.*y;
subplot(3,2,5);
imshow(x);
title('multipld');
l=ifft2(x);
k=abs(l);
subplot(3,2,6);
imshow(uint8(k));
title('inverse fft');
