clear all;
close all;

x = 0:0.1:1;
y = 0:0.1:1;
z = 0:0.1:2;
[X,Y] = meshgrid(x,y);
[XF2, ZF2] = meshgrid(x,z);

F1 = X.^2 + Y.^2;
F2 = XF2.^2;
%surf(XF2, F2, ZF2); hold on;
surf(X, Y, F1);
xlabel("X");
ylabel("Y");
zlabel("F1"); hold off;

figure(2)
f2 = x.^2;
plot(x,f2); grid on;
xlabel("X");
ylabel("Y");

txt1 = 'ATAS';
text(0.25,0.5,txt1);

txt2 = 'BAWAH';
text(0.8,0.25,txt2);