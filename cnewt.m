close all;
clear all; 
tic
% for function f(x) = ax^3 + bx^2 + cx + d
a=1; b=0; c=0; d=1;

%coordinate for lower left and upper right to be plotted
lowerXY = [-0.25 -0.25]*10;
upperXY = [0.25 0.25]*10;

f2 = @(x) a*x^3 + b*x^2 + c*x + d;
df2 = @(x) 3*a*x^2 + 2*b*x + c;

n=300;
count=1;
tol=1e-7;

% x1=-1;
% x2=1/2+1i*(sqrt(3)/2);
% x3=1/2-1i*(sqrt(3)/2);
r = roots([a b c d]);

x1=r(1);
x2=r(2);
x3=r(3);


a=linspace(lowerXY(1),upperXY(1),n);
b=linspace(lowerXY(2),upperXY(2),n);
col=zeros(n, n);

for i=1:length(a)
    if mod(i, 100)==0
        i
    end
    for j=1:length(b)
        root = newton(f2, df2, (a(i)+b(j)*1i), 1e-12);
        if(abs(root-x1)<tol)
            col(i,j)=0; %converges to x1
        elseif(abs(root-x2)<tol)
            col(i,j)=1; %converges to x2
        elseif(abs(root-x3)<tol)
            col(i,j)=2; %converges to x3
        end
    end
    count=count+1;
end

h=pcolor(a, b, col);
set(h, 'LineStyle', 'none' );

mycolors = [1 0 0; 0 1 0.25; 0 0 1];
colormap(mycolors);
caxis([0 2]);

fprintf('Roots\n')
fprintf('Red:   %f%+fi \n', real(x1), imag(x1))
fprintf('Green: %f%+fi \n', real(x2), imag(x2))
fprintf('Blue:  %f%+fi \n', real(x3), imag(x3))
toc
