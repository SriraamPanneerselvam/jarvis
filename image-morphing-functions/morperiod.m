%%//Periodicline Image//%%
clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\hum.jpg');
subplot(2,3,1)
imshow(a); 
title('Original image');
b=strel('periodicline',2,[1 -2]);
c=imdilate(a,b);
subplot(2,3,2)
imshow(c);
title('Periodicline Dilated image');
d=imerode(a,b);
subplot(2,3,3)
imshow(d);
title('Periodicline Eroded image');
e=imopen(a,b);
subplot(2,3,4)
imshow(e);
title('Periodicline Open image');
f=imclose(a,b);
subplot(2,3,5)
imshow(f);
title('Periodicline Close image');