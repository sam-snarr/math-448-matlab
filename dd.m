function ret=dd(x,y)
% Routine to find the divided difference table for data points, and output
% the coefficients for Newton's polynomial
% 
% x = vector of x values etc
% n = number of data point
% i,j = loop counters
% d = array for divided differences
% ret = diagonal of the array

% Initialize

n=length(x); d=zeros(n,n); ret=zeros(1,n);

% Form the table
for i=1:n, d(i,1)=y(i); end
for i=2:n
   for j=2:i
      d(i,j)=(d(i,j-1)-d(i-1,j-1))/(x(i)-x(i-j+1));
   end
end
%ret=d;
% Output diagonal
for i=1:n, ret(i)=d(i,i); end

%command line running divided diff
% x=[0.5 0.6 0.7 0.8 1];
% y=[-0.34409873 -0.17694460 0.01375227 0.22363362 0.65809197];
% a=dd(x, y)

% px=linspace(1, 5, 301);%300 intervals
% py=zeros(1, 301);
% for i=1:301, py(i)=evaldd(x, a, px(i));end
% plot(x, y, '.', px, py)
