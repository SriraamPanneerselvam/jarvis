%%//Edge Detection-Robert Method//%%

%%//1st Order//%%
clc;
clear all;
close all;
a=rgb2gray(imread('D:\blast.png'));
figure(1);
subplot(2,3,1);
imshow(a);
title('Original image');
[m n]=size(a);
for i=1:m-1
    for j=1:n-1
    px(i,j)=a(i+1,j+1)-a(i,j);
    end
end
for j=1:n-1
    for i=1:m-1
    py(i,j)=a(i+1,j)-a(i,j);
    end
end
p=px+py;
subplot(2,3,2);
imshow(p);
title('Robert image');

%%//2nd Order//%%
for i=2:m-1
    for j=2:n-1
        u(i,j)=a(i+1,j)+a(i-1,j)-(2*a(i,j));
    end
end
for j=2:n-1
for i=2:m-1
        l(i,j)=a(i,j+1)+a(i,j-1)-(2*a(i,j));
    end
end
s=u+l;
subplot(2,3,3)
imshow(s);
title('Edge detected image 2nd order');

%%//Using inbuilt fn//%%
x1=edge(a,'roberts');
subplot(2,3,4);
imshow(x1);
title('Robert inbuilt image');

%%//Gradient//%%
for i=1:m-1
    for j=1:n-1
        g(i,j)=a(i+1,j+1)-a(i,j);
    end
end
for j=1:n-1
for i=1:m-1
        h(i,j)=a(i+1,j+1)-a(i,j+1);
    end
end
v=g+h;
subplot(2,3,5)
imshow(v);
title('Edge detected gradient image ');

%%//Edge Detection-Sobel Method//%%
for i=2:m-1
    for j=2:n-1
        s(i,j)=a(i+1,j+1)+a(i-1,j+1)+(2*a(i,j+1))-a(i-1,j-1)-a(i+1,j-1)-(2*a(i,j-1));
    end
end
for j=2:n-1
    for i=2:m-1
        t(i,j)=a(i+1,j-1)+(2*a(i+1,j))+a(i+1,j+1)-a(i-1,j-1)-(2*a(i-1,j))-a(i-1,j+1);
    end
end
r=s+t;
figure(2)
subplot(2,4,1)
imshow(r);
title('edge detected sobel image ');

%%//Using inbuilt fn//%%
x2=edge(a,'sobel');
subplot(2,4,2);
imshow(x2);
title('Sobel inbuilt image');


%%//Edge Detection-Prewitt Method//%%

for i=2:m-1
    for j=2:n-1
        b(i,j)=a(i+1,j+1)+a(i-1,j+1)+(a(i,j+1))-a(i-1,j-1)-a(i+1,j-1)-(a(i,j-1));
    end
end
for j=2:n-1
    for i=2:m-1
        c(i,j)=a(i+1,j-1)+(a(i+1,j))+a(i+1,j+1)-a(i-1,j-1)-(a(i-1,j))-a(i-1,j+1);
    end
end
d=b+c;
subplot(2,4,3)
imshow(d);
title('edge detected prewitt image ');

%%//Using inbuilt fn//%%
x3=edge(a,'prewitt');
subplot(2,4,4);
imshow(x3);
title('Prewitt inbuilt image');

%%//Edge Detection-Laplacian Method//%%

for i=2:m-1
    for j=2:n-1
        pw(i,j)=-a(i+1,j+1)-a(i-1,j+1)-(a(i,j+1))-a(i-1,j-1)-a(i+1,j-1)-(a(i,j-1))-a(i,j-1)+(8*a(i,j))-a(i,j+1);
    end
end
subplot(2,4,5);
imshow(pw);
title('Edge detected laplacian image ');

%%//Using inbuilt fn//%%
x4=edge(a,'log');
subplot(2,4,6);
imshow(x4);
title('Log inbuilt image');

%%//Using inbuilt fn//%%
x5=edge(a,'zerocross');
subplot(2,4,7);
imshow(x5);
title('Zerocross inbuilt image');

%%//Using inbuilt fn//%%
x6=edge(a,'canny');
subplot(2,4,8);
imshow(x6);
title('Canny inbuilt image');

