% Pratap Luitel
% Engs 92
% HW - 4, Problem 3

N = 100;
f1 = zeros(N,1);
f2 = zeros(N,1);
f3 = zeros(N,1);

for x = 0:N-1
    f1(x+1) = exp(-pi*x^2);
    f2(x+1) = 2*x*exp(-pi*x^2);
    f3(x+1) = (4*x^2 - 2)*exp(-pi*x^2); 
end 

% ploting the result
subplot(4,1,1), stem (0:N-1, f1,'-');
title('f1')
subplot(4,1,2), stem (0:N-1, f2,'-');
title('f2')
subplot(4,1,3), stem (0:N-1, f3,'-');
title('f3')


