clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\hum.jpg');
subplot(2,5,1)
imshow(a); 
title('Original image');
b=strel('diamond',50)
c=imerode(a,b);
subplot(2,5,2)
imshow(c);
title('Diamond image');
d=strel('disk',5,4)
e=imerode(a,d)
subplot(2,5,3)
imshow(e);
title('Disk image');
f=strel('line',9,90)
g=imerode(a,f)
subplot(2,5,4)
imshow(g);
title('Line image');
h=strel('octagon',9)
i=imerode(a,h)
subplot(2,5,5)
imshow(i);
title('Octagon image');
j=strel('pair',[3 3])
k=imerode(a,j)
subplot(2,5,6)
imshow(k);
title('Pair image');
l=strel('periodicline',2,[1 -2])
m=imerode(a,l)
subplot(2,5,7)
imshow(m);
title('Periodicline image');
n=strel('rectangle',[3 5]) 
o=imerode(a,n)
subplot(2,5,8)
imshow(o);
title('Rectangle image');
p=strel('square',5)
q=imerode(a,p)
subplot(2,5,9)
imshow(q);
title('Square mage');
r=strel('ball',15,5)
s=imerode(a,r)
subplot(2,5,10)
imshow(s);
title('Ball image');
