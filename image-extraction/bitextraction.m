%%//Bit Extraction//%%

clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\baby.bmp');
figure(1);
subplot(1,2,1);
imshow(a);
title('colour img');
b=rgb2gray(a);
[m,n]=size(b);
for z=1:8
g=z
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),128);
end
end
figure(2);
subplot(3,3,1);
imshow(b);
title('grey img');

subplot(3,3,2);
imshow(uint8(c));
title('plane 1 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),64);
end
end
subplot(3,3,3);
imshow(uint8(c));
title('plane 2 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),32);
end
end
subplot(3,3,4);
imshow(uint8(c));
title('plane 3 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),16);
end
end
subplot(3,3,5);
imshow(uint8(c));
title('plane 4 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),8);
end
end
subplot(3,3,6);
imshow(uint8(c));
title('plane 5 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),4);
end
end
subplot(3,3,7);
imshow(uint8(c));
title('plane 6 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),2);
end
end
subplot(3,3,8);
imshow(uint8(c));
title('plane 7 removed');
for i=1:m
for j=1:n
c(i,j)=bitand(b(i,j),1);
end
end
subplot(3,3,9);
imshow(uint8(c));
title('plane 8 removed');
end
