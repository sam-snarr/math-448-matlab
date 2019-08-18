
%cubic
A= [length(x), sum(x), sum(x.^2), sum(x.^3); sum(x), sum(x.^2), sum(x.^3), sum(x.^4); sum(x.^2), sum(x.^3), sum(x.^4), sum(x.^5); 
    sum(x.^3), sum(x.^4), sum(x.^5), sum(x.^6)];

b=[sum(y);
   sum(x.*y);
   sum(y.*x.^2);
   sum(y.*x.^3)];

c =A\b

sum((y-(x.^3*c(4)+x.^2*c(3)+x*c(2)+c(1))).^2)

% %quad
% A= [length(x), sum(x), sum(x.^2); sum(x), sum(x.^2), sum(x.^3); sum(x.^2), sum(x.^3), sum(x.^4)];
% 
% b=[sum(y);
%    sum(x.*y);
%    sum(y.*x.^2)];
% 
% c =A\b
% 
% sum((y-(x.^2*c(3)+x*c(2)+c(1))).^2)
% 
% 
% %linear
%  A=[length(x), sum(x); 
%    sum(x), sum(x.^2)];
% 
%  b=[sum(y);
%    sum(x.*y)]
% c=A\b
% sum((y-(x*c(2)+c(1))).^2)
% 
