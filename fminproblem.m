%  to make graph of convergence for fminsearch()
gg=@(x,y) (1+x-y^2).^2+(y-x.^2).^2;

opt= optimset('TolFun', 1e-10, 'TolX', 1e-10);
figure
hold on
fminsearch(@f, [2, 2], opt)
%fsurf(gg)