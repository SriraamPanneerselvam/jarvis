%%//Band Pass Filter//%%

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
for o=100:157
    for p=100:157
        b(o,p)=0;
    end
end
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
title('fft shift');
x=z.*y;
subplot(3,2,5);
imshow(x);
title('product');
l=ifft2(x);
k=abs(l);
subplot(3,2,6);
imshow(uint8(k));
title('inverse fft');
