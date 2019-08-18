y =[3.080100000000000
   5.134700000000000
   6.685300000000000
   7.204500000000000
   7.850300000000000
  10.765200000000000
  13.320700000000000
  16.735199999999999
  15.593500000000001
  15.852600000000001
  16.269400000000001
  13.996400000000000
  14.635899999999999
  12.272500000000001
  13.135400000000001
  12.352900000000000
  10.596299999999999
   7.845700000000000
   8.532600000000000
   9.492900000000001
   7.418400000000000
   4.519600000000000
   4.821300000000000
   3.318300000000000];
x=[0.100000000000000
   1.100000000000000
   1.600000000000000
   2.400000000000000
   2.500000000000000
   4.100000000000000
   5.200000000000000
   6.100000000000000
   6.600000000000000
   7.100000000000000
   8.199999999999999
   9.100000000000000
   9.400000000000000
  11.100000000000000
  11.400000000000000
  12.199999999999999
  13.199999999999999
  14.100000000000000
  15.600000000000000
  16.100000000000001
  17.600000000000001
  17.899999999999999
  19.100000000000001
  20.000000000000000];

n=length(x);

m1 = zeros(n, 1);
m2 = zeros(n, 1);

b1 = zeros(n, 1);
b2 = zeros(n, 1);

S = zeros(n, 1);

for i=1:length(x)
    e=x(i);
    j=length(x(x<e));
    
    A=findA(x, e);
    r=findR(x, y, e);
    c=A\r;
    
    b1(i)=c(1);
    m1(i)=c(2);
    b2(i)=c(1)+e*(c(2)-c(3));
    m2(i)=c(3);
    
    S(i)=sum((y(1:j)-c(1)-c(2)*x(1:j)).^2)+sum((y(j+1:n)-b2(i)-c(3)*x(j+1:n)).^2);
    
end

t=table(x, y, b1, m1, b2, m2, S) % the best is row 10

plot(x, y, 'or')
hold on
y2=x(1:10)*m1(10)+b1(10);
y3=x(10:24)*m2(10)+b2(10);

plot(x(1:10), y2, x(10:24), y3)
axis([1,20,1,20])
fprintf('The Best Fit is row 10: \nSq.Error    = %f \nSlope 1     = %f\nIntercept 1 = %f\nSlope 2     = %f\nIntercept 2 = %f\n',S(10), m1(10), b1(10), m2(10), b2(10) )


