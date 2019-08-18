y=g2(x); 
z=g2(y);
a=z-2*y+x;

newx=z-(z-y)*dot(a, z-y)/norm(a)^2;
x=newx