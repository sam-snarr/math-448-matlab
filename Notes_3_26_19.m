clc

a=[10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b=[6;25;-11;15];

x=[0;0;0;0];

l= -tril(a, -1); %dont know why these are negative
u= -triu(a, 1);

d=a+l+u;

dinv=inv(d)

x=dinv*((l+u)*x+b)