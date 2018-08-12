clc;
clear all;
close all;
a=imread('E:\sri\jac.jpg');
b=rgb2gray(a)
J=imresize(b,[150 150]);
subplot(2,2,1)
imshow(J)
title('Resized image')
c=imread('E:\sri\jat.jpg');
d=rgb2gray(c)
K=imresize(d,[150 150]);
subplot(2,2,2)
imshow(K)
title('Resized image')
l=J+K
subplot(2,2,3)
imshow(l)
title('Added image')