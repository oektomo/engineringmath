limit = 4;
x=-limit:0.05:limit;
y=-limit:0.05:limit;
y=y';
ConstL = -5;
x2=zeros(size(x)(2),size(x)(2));
y2=zeros(size(y)(1),size(y)(1));

for i = 1 : size(x)(2)
x2(i,:) = x;
end


for i = 1 : size(y)(1)
y2(:,i) = y;
end

z=4.*x.*y-0.25*x.^4-0.25*y.^4;
belowConst = find(z<ConstL);
z(belowConst)=ConstL;
surf(x,y,z)
%size(z);