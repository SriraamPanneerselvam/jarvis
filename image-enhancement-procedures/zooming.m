%%//Zooming Operation//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP Images\jac.jpg');
b=rgb2gray(a);
subplot(2,2,1);
imshow(b);
title('Original Image');
[m,n]=size(b)
p=input('Enter the Zooming Factor =');
for i=1:m
    for j=1:n
        for k=1:p
        g(i,(j-1)*p+k)=b(i,j);
        end
    end
end
subplot(2,2,2);
imshow(g);
title('Horizontal zoomed Image');
[d,w]=size(b)
for j=1:w
 for i=1:d
     for k=1:p
        q((i-1)*p+k,j)=b(i,j);
     end
 end
end
 subplot(2,2,3);
 imshow(q);
 title('Vertical zoomed Image');
[x,y]=size(g)
for j=1:y
 for i=1:x
     for k=1:p
        t((i-1)*p+k,j)=g(i,j);
     end
 end
end
 subplot(2,2,4);
 imshow(t);
 title('Horizontal & Vertical zoomed Image');

 