%%//BitOR removal//%%

clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\baby.bmp');
figure(1);
subplot(1,2,1);
imshow(a);
title('colour img');
b=rgb2gray(a);
[m,n]=size(b);
for z=1:8
    g=z
    s=255-2^(g-1);
for i=1:m
    for j=1:n    
    c(i,j)=bitor(b(i,j),s);
    end    
end
 figure(1);
subplot(1,2,2);
imshow(b);
title('grey img');
figure(2);
 subplot(3,3,z);
    imshow(uint8(c));
    title('plane removed');
end
