function y=rnd(x,n)
% Function to round off real x to n digits accuracy
if x==0
   y=0;
elseif x>0
   pow=floor(log10(x));
   y=round(x*10^(n-1-pow))*10^(pow+1-n);
else
   pow=floor(log10(-x));
   y=-round((-x)*10^(n-1-pow))*10^(pow+1-n);
end
