%Pratap Luitel
%Engs 92
%Assignment 7, Problem 1

T = 0.1;
omega = [-100:.005:100];
sigma = [-100:.005:100];
%s = omega + sigma * 1i; %positive imaginary axis
z = omega + sigma * 1i;
w = 1./(sin(z));



%(a)


figure
axis equal
plot(real(w),imag(w),'r.')
grid on
axis([-100 100 -100 100])
title('z-plane')
xlabel('real(w)')
ylabel('imag(w)')


