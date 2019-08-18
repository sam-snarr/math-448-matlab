function x2=secant(f,x0,x1,tol)
% Function to solve f(x)=0 using the secant method. Two initial guesses
% are required
err=abs(x1-x0); n=0; fx0=f(x0); fx1=f(x1);
while err>tol && n<50
  n=n+1;
  x2=x1-fx1*(x1-x0)/(fx1-fx0);
  %disp(x2);
  err=abs(x2-x1); x0=x1; fx0=fx1; x1=x2; fx1=f(x1);
end
fprintf('%i %15.10g\n',n,x2);