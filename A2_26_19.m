% x=linspace(-1, 1, 301);
% y=sin(x);
% y1= 3*(sin(1)-cos(1))*x+(98*cos(1)-63*sin(1))*(5*x.^3-3*x)/2;
% plot(x,y, x,y1)
% y2=x-x.^3/6;
% plot(x,y, x,y1, x,y2)
% plot(x, abs(y-y1))
% plot(x, abs(y-y1), x, abs(y-y2))

a0=1/2*integral(@(x)exp((x+1)/2), -1,1)
a1=3/2*integral(@(x)exp((x+1)/2).*(x+1)/2, -1,1)
a2=5/2*integral(@(x)exp((x+1)/2).*0.5.*(3*((x+1)/2).^2-1), -1,1)
a3=7/2*integral(@(x)exp((x+1)/2).*0.5.*(5*((x+1)/2).^3-3.*(x+1)/2), -1,1)
