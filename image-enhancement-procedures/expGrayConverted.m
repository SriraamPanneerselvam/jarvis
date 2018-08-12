clc;
clear all;
close all;
a=imread('D:\DIP images\jac.jpg');
subplot(2,2,1)
imshow(a);
title('original image')
b=rgb2gray(a);
subplot(2,2,2)
imshow(b)
title('gray scale image')
