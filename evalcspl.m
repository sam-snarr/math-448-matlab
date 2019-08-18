function ret=evalcspl(a,b,c,d,x,px)
% Routine to EVALuate a Cubic SPLine at a point px

% Check that input is in range
n=length(x);
if px<x(1) || px>x(n)
    error('x must be in [%d,%d]',x(1),x(n))
end

% Find the right interval
if px==x(n), pos=n-1;
else
    % Binary search
    left=1; right=n; len=right-left;
    while len>1
        mid=floor((left+right)/2);
        if px>=x(mid), left=mid;
        else right=mid;
        end
        len=right-left;
    end
    pos=left;
end
t=px-x(pos); 
ret=a(pos)+t*(b(pos)+t*(c(pos)+t*d(pos)));

