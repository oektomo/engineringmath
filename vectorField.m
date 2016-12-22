clear all;
close all;

x = 0:0.1:1;
y = 0:0.1:1;
z = 0:0.1:2;
[X,Y] = meshgrid(x,y);
quiver(x, y, X, Y);
title("f(x,y) = xi+yj");

x = -1:0.1:1;
y = -1:0.1:1;
x2 = x;
y2 = -y;
[X2, Y2] = meshgrid(x2,y2);
figure(2);
quiver(x, y, X2, Y2); grid on
title("f(x,y) = xi-yj called \"saddle point\"");


x = -1:0.1:1;
y = -1:0.1:1;
[x3, y3] = meshgrid(x, y);
X3 = -2*x3;
Y3 = x3-4*y3;
figure(3);
quiver(x, y, X3, Y3); grid on;
title("f(x,y) = -2xi + (x-4y)j called \"node\"");


x = -5:1:5;
y = -5:1:5;
[x4, y4] = meshgrid(x, y);
%X4 = 3*y4;
%Y4 = -x4;
X4 = -x4+2*y4;
Y4 = -y4;
figure(4);
quiver(x, y, X4, Y4); grid on;
title("f(x,y) = (-x+2y)i -yj called \"improper node\"");

x = -5:1:5;
y = -5:1:5;
[x5, y5] = meshgrid(x, y);
X5 = 3*y4;
Y5 = -x4;
figure(5);
quiver(x, y, X5, Y5); grid on;
title("f(x,y) = 3yi -xj called \"center\"");