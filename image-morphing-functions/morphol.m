clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\aaa.bmp');
b=[1 1 1; 1 1 1; 1 1 1];
subplot(2,3,1)
imshow(a);
title('Original binary image');
c=imerode(a,b);
subplot(2,3,2)
imshow(c);
title('Eroded image');
d=imdilate(a,b);
subplot(2,3,3)
imshow(d); 
title('Dilated image');
e=imread('D:\Sri\DIP images\man.bmp');
f=[1 1 1; 1 1 1; 1 1 1]
subplot(2,3,4)
imshow(e);
title('Original binary image');
g=imopen(e,f);
subplot(2,3,5)
imshow(g);
title('Open image');
h=imclose(e,f);
subplot(2,3,6)
imshow(h); 
title('Close image');

