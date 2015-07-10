%Pratap Luitel
%Engs 92
%Assignment 7, Problem 1

y = -20:0.1:20 ;
x = 0;
z = x + y*1i;

w = (1+z)./(1-z);


%(a)
figure
plot(real(w),imag(w))
axis equal
title('w-plane')
xlabel('real(w)')
ylabel('imag(w)')
fprintf('(a)\n');
fprintf('graph is printed below\n');
%(b)
fprintf('(b)\n');
fprintf('u^2 + v^2 = 1\n');
%(c)
fprintf('(c)\n');
fprintf('The -ve half of Z plane will show up in the -ve of W plane\n');

