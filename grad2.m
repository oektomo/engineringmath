close all;

limit = 1;
delta = 0.1;
x=-limit:delta:limit;
y=-limit:delta:limit;
y=y';
ConstL = -5;
x2=zeros(size(x)(2),size(x)(2));
y2=zeros(size(y)(1),size(y)(1));

x3=zeros(size(x)(2),size(x)(2));
y3=zeros(size(y)(1),size(y)(1));

x_3 = 2*x-3;
for i = 1 : size(x)(2)
x2(i,:) = x;
x3(i,:) = x_3;
end

y_3 = 2*y-3;
for i = 1 : size(y)(1)
y2(:,i) = y;
y3(:,i) = y_3;
end
%plane_x = ;
%z=4.*x.*y-0.25*x.^4-0.25*y.^4;

fv_x3 = x2.^2-3.*x2;
fv_y3 = y2.^2-3.*y2;

z = x2.^2 + x2.*y2 + y2.^2;
belowConst = find(z<ConstL);
z(belowConst)=ConstL;
%surf(x,y,z)
%size(z);
%figure;

quiver(x,y,fv_x3,fv_y3);
title("vector field from function");

figure;
quiver(x,y,x3,y3); grid on;
title("grad");

z3=fv_x3 + fv_y3;
dz3 = x3+y3;
figure;
surf(x,y,z3);
title("scalar field function with it's grad"); hold on;
quiver(x,y,x3,y3); hold off;

figure;
surf(x,y,dz3);
title("div");