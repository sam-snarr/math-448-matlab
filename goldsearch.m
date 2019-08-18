% Golden Search minimization algorithm
function ret=goldsearch(f, a, b)
n=0;
phi = (1+sqrt(5))/2; 
tol = 1e-10; 

c=b-(b-a)/phi;
d=a+(b-a)/phi;
while (abs(a-b)>tol && n<50000)
     
    fc = f(c);
    fd = f(d);
    if fc<fd
        b=d; d=c; 
        c = b-(b-a)/phi;
        fd=fc;
    elseif fc>fd
        a=c; c=d; 
        d=a+(b-a)/phi;
    end
    %fprintf("%10.15f,  %10.15f,  %10.15f \n", a, b, abs(a-b))
    n=n+1;
end

ret=d; 
truemin = 2.387425886722793;

fprintf('\nthe approximate value of the minimum is %0.10f with true value %0.10f\n', d, truemin)
fprintf('error %.10f\n', abs(d-truemin))

