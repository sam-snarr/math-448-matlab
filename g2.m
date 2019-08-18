function ret = g2(x)

ret = zeros(3, 1);
% ret(1)=(cos(x(2)*x(3))+1/2)/3;
% ret(2)=sqrt(x(1)^2+sin(x(3)+1.06))/9-0.1;
% ret(3)=(-exp(-x(1)*x(2))-(10*pi-3)/3)/20;

%  ret(1) = x(1)+x(1)^2*x(2)+sin(x(2)); doesnt work bc of sin in imaginary
%  ret(2) = x(1)*(7*sqrt(x(2))-1);

ret(1) = x(2)^2+5; % solving for x1, x2, x3
ret(2) = 37-x(1)^2;
ret(3) = 3-x(1)-x(2);









