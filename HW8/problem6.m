%Pratap Luitel
%Engs 92
%Assignment 8, Problem 6

n  = [-100:100];
a = 10;
s = sin(pi./(2*n));
expRatio = (exp(1i*pi./(2*n)))./(1-exp(1i*pi./n));

neb2 = ((2*1i*a*pi)./n).*expRatio;

neb = (pi*a)./(n.*s);
figure;
plot(n,neb);

title('NEB vs n');
xlabel('n');
ylabel('NEB')

figure;
plot(n,neb2);
