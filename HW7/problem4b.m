%Pratap Luitel
%Engs 92
%Assignment 7, Problem 4b (7.20)

y = -20:1:20;

z1 = 1 + y*1i;
z2 = -1 + y*1i;

w1 = z1.^(1/2);
w2 = z2.^(1/2);


figure
subplot(2,1,1)
plot(x,real(w1),'r:',x,real(w2),'b:')
legend('real(w1)','real(w2)')

subplot(2,1,2)
plot(x,imag(w1),'r*',x,imag(w2),'b*')
legend('imag(w1)','imag(w2)')