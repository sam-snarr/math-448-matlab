function ret = cfnewt(a, b, c, d, x1, y1, x2, y2, n)
% CFNEWT function that plots basins of attraction for a polynomial
% using newton's root finding method

% *** Note that you will need to have your own newton() function that returns a
% a root approximation using newtons method ***

%       a,b,c,d - coefficients of polynomial ax^3+bx^2+cx+d
%       x1, y1 - bottom left coordinate on plot
%       x2, y2 - top right coordinate on plot
%       n - number of columns of pixels (total number of pixels is n^2)

tic % starts a timer to time process

% function and derivative of f(x) = ax^3 + bx^2 + cx + d
f2 = @(x) a*x^3 + b*x^2 + c*x + d;
df2 = @(x) 3*a*x^2 + 2*b*x + c;

xr=[];
yr=[];

xg=[];
yg=[];

xb=[];
yb=[];

% tolerance for which root to match approximation to
tol=1e-7;

% the 3 roots of the polynomial 
r = roots([a b c d]);
root1=r(1);
root2=r(2);
root3=r(3);

% creates x and y values 
xp=linspace(x1, x2, n);
yp=linspace(y1, y2, n);

% matrix that holds color value for plotting 



% loops through all x points
fprintf('\nStarting rendering process...\n')
for i=1:length(xp)
    if mod(i, 100)==0
        % lets user know how far into the process they are
        fprintf('Working on pixel column %i out of %i\n', i, n)
    end
    
    % loops through all the y points
    for j=1:length(yp)
        % uses newtons method with given point and tolerance of 1e-12
        root = newton(f2, df2, (xp(i)+yp(j)*sqrt(-1)), 1e-12);
        
        % assigns color root that newtons method converges to
        if(abs(root-root1)<tol)
            xr=horzcat(xr, xp(i)); %converges to root1
            yr=horzcat(yr, yp(j));
        elseif(abs(root-root2)<tol)
            xg=horzcat(xg, xp(i)); %converges to root2
            yg=horzcat(yg, yp(j));
        elseif(abs(root-root3)<tol)
            xb=horzcat(xb, xp(i)); %converges to root3 
            yb=horzcat(yb, yp(j));
        end 
    end
end

fprintf('\nPlotting...\n\n')
fprintf('Roots\n')
fprintf('Red:   %f%+fi \n', real(root1), imag(root1))
fprintf('Green: %f%+fi \n', real(root2), imag(root2))
fprintf('Blue:  %f%+fi \n\n', real(root3), imag(root3))

toc % ends timer and outputs time it took to run program

plot(xr, yr, '.r')
hold on
plot(xg, yg, '.g')
plot(xb, yb, '.b')


ret=1;
end

