%%//Threshold Program//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\tj.jpg');
b=rgb2gray(a);
subplot(1,2,1)
imshow(a)
title('Original image')
[m,n]=size(b);
t=150
for i=1:0.5:m
    for j=1:0.5:n
       if b(i,j)>t
           b(i,j)=255;
       else
           b(i,j)=0;
       end
    end
end
subplot(1,2,2)
imshow(b)
title('Size image')