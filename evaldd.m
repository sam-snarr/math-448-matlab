function ret=evaldd(x,coef,p)
% Routine to evaluate a divided difference representation of a polynomial
%
% x = vector of x values
% coef = vector of divided difference coefficients
% p = location to evaluate the polynomial
% ret = the polynomial's value
% i = loop counter

% Initialize
n=length(x); ret=coef(n);

% Build nested form 
for i=(n-1):-1:1, ret=ret*(p-x(i))+coef(i); end