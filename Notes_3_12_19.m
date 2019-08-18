% chebyshev minimizes max error


x=linspace(-1, 1, 301);
y=cos(x);
p6=1-x.^2/2+x.^4/24-x.^6/720;

p5=19/480*x.^4-639/1280*x.^2+23039/23040;

plot(x, y, x, p6, x, p5);

plot(x, abs(y-p6), x, abs(y-p5))

p4t=1-x.^2/2+x.^4/24;
plot(x, abs(y-p5), x, abs(y-p4t), x, abs(y-p6))

% pade plot of tan n=3, m=2

x=linspace(0, 1, 301);
y=tan(x);
p1=x+x.^3/3+2*x.^5/15;
p2=(15*x-x.^3)./(15-6*x.^2);
plot(x, y, x, p1, x, p2)
semilogy(x, abs(y-p1), x, abs(y-p2))
