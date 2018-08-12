%%//Negative Image Program//%%
clc;
clear all;
close all;
a=imread('D:\1.bmp');
% b=rgb2gray(a);
subplot(1,2,1)
imshow(a)
title('Original image')
c=255-a;
subplot(1,2,2)
imshow(c)
title('Negative  image')
