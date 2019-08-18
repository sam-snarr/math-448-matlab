% will do one step of steepest descent

h0=g(x);
a3=1; 
while h(x, a3)>h0
    a3=a3/2;
end

a2=a3/2;
g1=h0; g2=h(x, a2); g3=h(x, a3); 
h1=(g2-g1)/a2;
h2=(g3-g2)/(a3-a2);
h3=(h2-h1)/a3;
a=(a2-h1/h3)/2; 

if h(x, a)>g3
    a=a3; 
end

x=x-a*gradG(x);

a
x
