% Integration that shows 1/sqrt(n) using regular random Monte method
x = [];
f = @(x) x.^2 - 1;
calc = integral(f, 2, 6); % actual
rand('seed', 1);

for i=10:1000:100000
    x = horzcat(x, abs(monteInt(f, i)-calc)/calc); % percent error
end
x(length(x))
plot(10:1000:100000, x)


% function that generates approximate integral using monte method using pdf
% 1/(b-a)
function [vol]= monteInt(f, a, b, n)

a = 2;
b = 6;
d = 40;
areaBox = (b-a)*d; % area of box
x = rand(n, 1).*(b-a) + a; % random values
y = rand(n, 1).*d;
count = 0;
for i=1:n
    if y(i)<f(x(i)) % if point is in area then it will count
        count = count + 1;
    end
end
vol = areaBox*count/n; % approximate volume
end