function ret=f(x)

% ret = x^4-x-1; %aberth method
%ret=(1-x(1))^2+100*(x(2)-x(1)^2)^2;
ret=(1+x(1)-x(2)^2)^2+(x(2)-x(1)^2)^2;

plot(x(1), x(2), 'k.')


%ret=1/2+x^2 /4-x*sin(x)+0.5*cos(2*x);
%ret= x^4-2*x^3-12*x^2+16*x-1;
%ret=x^4+x^3+3*x^2+2*x+2;
%ret=x-(x^5-7)/x^2
%ret=x-(x^5-7)/(5*x^4);
%ret=x-(x^5-7)/12;
%ret = sin(x)-exp(1)^-x;
%ret = (x-2)^2-log(x); 
%ret= 2*x^3 + 2;