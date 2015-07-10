

fun = @(z) z./cos(pi.*z - 1);

g= @(z) z.*sin(1./z);
C = [1+1i -1+1i -1-1i 1-1i];
I = integral(g,1,1,'Waypoints',C);

