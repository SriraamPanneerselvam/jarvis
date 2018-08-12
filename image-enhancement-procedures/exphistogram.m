%%//Histogram Program//%%
clc;
clear all;
close all;
a=imread('D:\blast.png');
b=rgb2gray(a);
subplot(2,2,1)
imshow(b)
title('Gray scale image')
J = histeq(b);
subplot(2,2,2)
imshow(J)
title('contrast of an intenty image using histogram equalization.')
subplot(2,2,3)
imhist(b);
title('Display a histogram of the original image')
subplot(2,2,4)
imhist(J);
title('Compare it to a histogram of the processed image')
