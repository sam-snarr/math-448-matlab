function [px,pdx,retb]=horner(a,x)
% Function to evaluate a polynomial and its derivative using Horner's
% nested method, which also outputs coefficients retb for P_{n-1}(x) such
% that P_n(x)=(x-x_0)P_{n-1}(x)+b_0

% a = polynomial coefficients
% x = point at which to evaluate polynomial
% px = polynomial value
% pdx = polynpomial derivative value
% retb = coefficients of lower order polynomial
% n = number of coefficients
% b = full vector of new coefficients
% j = loop counter

% Initialize
n=length(a); b(n)=a(n); pdx=a(n);

% Loop through the nested coefficients
for j=n-1:-1:2
  b(j)=a(j)+x*b(j+1); pdx=b(j)+x*pdx;
end
% The last is separate because the derivative data is smaller
b(1)=x*b(2)+a(1);

% Output relevant data
px=b(1); retb=b(2:n);