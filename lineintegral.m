clear all;
close all;

t = 0:0.1:pi/2;
x = 3*cos(t);
y = 3*sin(t);

plotting = 0;
if plotting == 1
plot(x,y);
title('plot x y');
end

xF=zeros(size(x)(2),size(x)(2)); size(xF)
yF=zeros(size(y')(1),size(y')(1)); size(yF)

