%%//Water Marking//%%

clc;
clear all;
close all;
a=imread('D:\Sri\DIP images\pen.jpg');
b=imresize(a,[100 100]);
a1=double(b);
subplot(3,4,1);
imshow(uint8(a1));
title('original image');
k=imread('D:\Sri\DIP images\hum.jpg');
c=imresize(k,[100 100]);
k1=double(c);
subplot(3,4,2);
imshow(uint8(k1));
title('key image');
[ll lh hl hh]=dwt2(a1,'db1');
g=[ll,lh ;hl,hh];    
subplot(3,4,3);
imshow(g);
title('dwt image');
x=g+(0.1.*k1);
subplot(3,4,4);
imshow(uint8(x));
title('output image');
[m,n]=size(x);
for i=1:50
    for j=1:50
        ll1(i,j)=x(i,j);
    end
end
subplot(3,4,5);
imshow(uint8(ll1));
title('ll1 image');
for i=1:50
    for j=1:50
        lh1(i,j)=x(i,(j+(n/2)));
    end
end
subplot(3,4,6);
imshow(uint8(lh1));
title('lh1 image');
for i=1:50
    for j=1:50
        hl1(i,j)=x((i+(m/2)),j);
    end
end
subplot(3,4,7);
imshow(uint8(hl1));
title('hl1 image');
for i=1:50
    for j=1:50
        hh1(i,j)=x((i+(m/2)),(j+(n/2)));
    end
end
subplot(3,4,8);
imshow(uint8(hh1));
title('hh1 image');
y=idwt2(ll1,lh1,hl1,hh1,'db1')
subplot(3,4,9);
imshow(uint8(y));
title('inverse image');
y1=dwt2(y,'db1');
subplot(3,4,10);
imshow(uint8(y1));
title('dwt image')
w=x-g;
subplot(3,4,11);
imshow(15*uint8(w));
title('key image');


