function out=bezier(x0,y0, x1,y1, a0,b0, a1,b1)
%function to find bezier curve to imput line segments
% (x0,y0) to (x0+a0,y0+b0),  (x1-a1, y1-b1) to (x1,y1)
d=x0; c=a0; a=2*(x0-x1)+a0+a1; b=3*(x1-x0)-(a1+2*a0);
h=y0; g=b0; e=2*(y0-y1)+b0+b1; f=3*(y1-y0)-(b1+2*b0);
out=[a b c d e f g h];
