%%//Blending//%%
clc;
close all;
clear all;
a=imread('D:\Sri\DIP images\jac.jpg');
b=rgb2gray(a);
c=imread('D:\Sri\DIP images\mon.jpg');
d=rgb2gray(c);
x=imresize(b,[250 250]);
subplot(2,3,1);
imshow(x);
title('Resize 1');
y=imresize(d,[250 250]);
subplot(2,3,2);
imshow(y);
title('Resize 2');
t=0.01
z=((1-t)*x)+(t*y);
subplot(2,3,3);
imshow(z);
title('Blending 0.01');
t=0.3
z2=((1-t)*x)+(t*y);
subplot(2,3,4);
imshow(z2);
title('Blending 0.3');
t=0.6
z4=((1-t)*x)+(t*y)
subplot(2,3,5);
imshow(z4);
title('Blending 0.6');
t=0.9
z5=((1-t)*x)+(t*y)
subplot(2,3,6);
imshow(z5);
title('Blending 0.9');
 


