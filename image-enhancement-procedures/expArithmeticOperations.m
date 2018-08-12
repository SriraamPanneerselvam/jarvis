%%//Arithmetic Operations//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\jt.jpg');
b=rgb2gray(a)
J=imresize(b,[750 750]);
subplot(2,3,1)
imshow(J)
title('Resized image')
c=imread('D:\Sri\DIP images\tj.jpg');
d=rgb2gray(c)
K=imresize(d,[750 750]);
subplot(2,3,2)
imshow(K)
title('Resized image')
l=J+K
subplot(2,3,3)
imshow(l)
title('Added image')
m=J-K
subplot(2,3,4)
imshow(m)
title('Subtracted image')
n=J.*K
subplot(2,3,5)
imshow(n)
title('Multiplied image')
o=J./K
subplot(2,3,6)
imshow(o)
title('Divided image')
