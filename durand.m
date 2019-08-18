% the first coefficient must be 1
y1=x1-(x1^4+a*x1^3+b*x1^2+c*x1+d)/((x1-x2)*(x1-x3)*(x1-x4));
y2=x2-(x2^4+a*x2^3+b*x2^2+c*x2+d)/((x2-x1)*(x2-x3)*(x2-x4));
y3=x3-(x3^4+a*x3^3+b*x3^2+c*x3+d)/((x3-x2)*(x3-x1)*(x3-x4));
y4=x4-(x4^4+a*x4^3+b*x4^2+c*x4+d)/((x4-x2)*(x4-x3)*(x4-x1));
x1=y1; x2=y2; x3=y3; x4=y4; disp([x1, x2, x3, x4]')

