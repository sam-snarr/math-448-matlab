function x3 = muller(f,x0,x1,x2)
% Routine to find a root of a polynomial using Muller's method

N=50; tol=1e-10; count=2; h=abs(x2-x1);
f0=f(x0); f1=f(x1); disp([x0 x1 x2]);

while count<N && abs(h)>tol
  f2=f(x2); count=count+1;
  h1=x1-x0; h2=x2-x1;
  d1=(f1-f0)/h1; d2=(f2-f1)/h2;
  a=(d2-d1)/(h1+h2); b=d2+h2*a;
  discrim=sqrt(b^2-4*a*f2);
  if abs(b-discrim)<abs(b+discrim)
    e=b+discrim;
  else
    e=b-discrim;
  end
  h=-2*f2/e; x3=x2+h; disp(x3)
  x0=x1; f0=f1; x1=x2; f1=f2; x2=x3;
end