%%//Simultaneous Contrast Program//%%
clc;
clear all;
close all;
a=imread('D:\DIP images\ada.jpg');
g=rgb2gray(a)
J=imresize(g,[1500 1500]);
subplot(2,3,1)
imshow(g)
title('Original gray scale image')
subplot(2,3,2)
imshow(J)
title('Resized image')
[m,n]=size(J)
t=0
for i=201:1300
    for j=201:1300
       if J(i,j)>t
           J(i,j)=255;
       else
           J(i,j)=0;
       end
    end
end
subplot(2,3,3)
imshow(J)
title('Threshold image')
for i=1:m
    for j=1:n
        if J(i,j)<200
   J(i,j)=50;
        end
    end
end
subplot(2,3,4)
imshow(J)
title('50 Intensity image')
for i=1:m
    for j=1:n
        if J(i,j)<200
   J(i,j)=100;
        end
    end
end
subplot(2,3,5)
imshow(J)
title('100 Intensity image')
for i=1:m
    for j=1:n
        if J(i,j)<200
   J(i,j)=150;
        end
    end
end
subplot(2,3,6)
imshow(J)
title('150 Intensity image')
