%%//Kernal Matrix//%%

clc;
clear all;
close all;
m=3;
n=m;
k=1;
alpha2=ones(1,n)*sqrt(2/n);
alpha1=ones(1,m)*sqrt(2/m);
alpha1(1)=sqrt(1/m);
alpha2(1)=sqrt(2/n);
for u=0:m-1
    for v=0:n-1
        for x=0:m-1
            for y=0:n-1
                a{u+1,v+1}(x+1,y+1)=alpha1(u+1)*alpha2(v+1)*cos(((2*x+1)*u*pi)/(2*n))*cos(((2*y+1)*v*pi)/(2*m));
            end
        end
    end
end
for x=1:m
    for y=1:n
        subplot(m,n,k)
        imshow(a{x,y});
        k=k+1;
    end
end
