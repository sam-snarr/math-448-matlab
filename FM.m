function ret=FM(x)
ret=zeros(2,1); % forces to be a column
% ret(1)=3*x(1)-cos(x(2)*x(3))-1/2; 
% ret(2)=x(1)^2-81*(x(2)+0.1)^2 + sin(x(3))+1.06; 
% ret(3)=exp(-x(1)*x(2))+20*x(3)+(10*pi-3)/3;

ret(1)=1+x(1)-x(2)^2;
ret(2)=-x(1)^2+x(2);

% x=[1; 2; 3] 
%
% y=JM(x)\(-FM(x))
% x=x+y
% REPEAT
