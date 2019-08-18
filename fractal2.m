
n = 500;
x=linspace(-5, 5,n);	% Real space
y=linspace(-5, 5,n);	% Imaginary space

% Newton iterations iterates through all the pixels on the screen
% bottom to top, left to right
colMatrix=zeros(n, n);


% Z^3 = -1
actualRoots = roots([1 0 0 1]);
f3 = @(x) x^3+1;
fprime = @(x) 3*x^2;


for i=1:n
    for j=1:n
        approxRoot = newton(f3, fprime, (x(i)+y(j)*sqrt(-1)), 1e-12);
        
        if(abs(approxRoot-actualRoots(1))<1e-7)
            colMatrix(i, j)= 1;
        elseif(abs(approxRoot-actualRoots(2))<1e-7)
            colMatrix(i, j)= 2;
        elseif(abs(approxRoot-actualRoots(3))<1e-7)
            colMatrix(i, j)= 3;
        end
    end
end



% now we have a matrix with 1, 2, 3, at every point depending which
% imag root the point converged to
caxis([1,3]);
colormap([1 0 0; 0 1 0; 0 0 1]);
plot= pcolor(x, y, colMatrix);
set(plot, 'LineStyle', 'none' );



