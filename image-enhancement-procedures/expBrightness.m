%%//Brightness Program//%% 
clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\ada.jpg');
b=rgb2gray(a)
subplot(1,3,1)
imshow(b)
title('Gray scale image')
c=double(b)+80;
d=uint8(c);
subplot(1,3,2)
imshow(d)
title('Brightness increased image')
e=double(b)-50;
subplot(1,3,3)
f=uint8(e);
imshow(f)
title('Brightness decreased image')

