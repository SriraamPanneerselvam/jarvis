%%//Point Detection//%%

clc;
clear all;
close all;
Y=imread('D:\Sri\DIP images\pen.jpg');
%Y1= bwareaopen(Y, 20);
% fplap = [1 1 1; 1 -8 1; 1 1 1]      %Laplacian at a point
fplap = [0 1 0; 1 -4 1; 0 1 0];      %Laplacian at a point
filtim = imfilter(Y,fplap,'symmetric', 'conv');
subplot(2,2,1)
imshow(Y);
title('Original image');
subplot(2,2,2)
imshow(filtim);
title('Laplacian Point Filtered');
subplot(2,2,3)
imshow(Y-filtim);
title('Difference Image');
