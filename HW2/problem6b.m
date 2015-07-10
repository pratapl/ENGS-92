% Pratap Luitel
% Engs 92
% HW - 2, Problem 6b (3.16b)


N = 16;         % length of signal vector
n = 0:(N-1);    % vector index
k = 2;
p = 15;          


f = cos(2*pi*k*(n-p)/N); % sampling the discrete vector elements
F = fft(f);              % computing the DFT

% ploting the result
subplot(3,1,1), stem (n, f,'-');
title('Signal')
subplot(3,1,2), stem (n, real(F),'-');
title('DFT - Real')
subplot(3,1,3), stem (n, imag(F),'--');
title('DFT - Imag')

%calculate and print magnitude of F[m] and phase angle
fprintf('The magnitude of F[m] is: %f\n',norm(F,2));
fprintf('The phase angle of F[m] is: %f\n',angle(F(3)));
   

