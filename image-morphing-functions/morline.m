%%//Line Image//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\hum.jpg');
subplot(2,3,1)
imshow(a); 
title('Original image');
b=strel('line',9,90);
c=imdilate(a,b);
subplot(2,3,2)
imshow(c);
title('Line Dilated image');
d=imerode(a,b);
subplot(2,3,3)
imshow(d);
title('Line Eroded image');
e=imopen(a,b);
subplot(2,3,4)
imshow(e);
title('Line Open image');
f=imclose(a,b);
subplot(2,3,5)
imshow(f);
title('Line Close image');