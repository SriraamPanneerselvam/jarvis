%%//Simultaneous Contrast Program//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP Images\sk.jpg');
g=rgb2gray(a)
J=imresize(g,[1200 1200]);
subplot(3,3,1)
imshow(g)
title('Original gray scale image')
subplot(3,3,2)
imshow(J)
title('Resized image')
b=imread('D:\Sri\DIP Images\foc.jpg');
h=rgb2gray(b)
S=imresize(h,[1200 1200]);
subplot(3,3,3)
imshow(h)
title('Original gray scale image')
subplot(3,3,4)
imshow(S)
title('Resized image')
[m,n]=size(J)
for i=1:3:m
    for j=1:3:n
           t(i,j)=J(i,j);
    end
end
subplot(3,3,5)
imshow(t)
title('Threshold image')
[x,y]=size(S)
for i=4:3:m
    for j=4:3:n
           t(i,j)=S(i,j);
    end
end
subplot(3,3,6)
imshow(t)
title('Threshold image')
t=J+S
subplot(3,3,7)
imshow(t)
title('Threshold image')