%%//Mach Band Effect Program//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP Images\foc.jpg');
g=rgb2gray(a)
J=imresize(g,[1200 1200]);
subplot(2,3,1)
imshow(g)
title('Original gray scale image')
subplot(2,3,2)
imshow(J)
title('Resized image')
[m,n]=size(J)
t=0
for i=1:m
    for j=1:10:n
       if J(i,j)>t
           J(i,j)=150;
       else
           J(i,j)=100;
       end
    end
end
subplot(2,3,3)
imshow(J)
title('Threshold image')