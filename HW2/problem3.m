%Pratap Luitel
%Engs 92
%HW-2, Problem 3)d
%Reference: worked on code originally provided by Markus Testorf on 2011-09-16

N = 128;        % length of signal vector
n = 0:(N-1);    % vector index
v = 10;         % frequency of the sinusoidal signal
vS = 100;       % sampling frequency
Nc = 500;       % number of samples for continuous signal approximation

theta = 2*pi*v/vS;                  % digital frequency
f = cos(theta * n);                 % sampling the discrete vector elements
fc = cos(N*theta*(1:Nc)/Nc);        % much finer sampling to approximate the continuous signal 
F = fft(f);                         % computing the DFT

% ploting the result
subplot(3,1,1), plot (n, real(f), 'o', N*(1:Nc)./Nc, real(fc),'-');
title('Signal - Re')
subplot(3,1,2), plot (n, imag(f), 'o', N*(1:Nc)./Nc, imag(fc),'-');
title('Signal - Im')
subplot(3,1,3), stem (n, abs(F));
title('DFT - abs')


