% Pratap Luitel
% Engs 92
% HW - 3, Problem 6


N = 8;         % length of signal vector
%n = 0:(N-1);    % vector index
T = 1;
f = zeros(N,1);
Cn = zeros(N,1);
for n = 0:N-1
    t = n/N;
    if t < 1/2
        f(n+1) = 2*(t);
    else
        f(n+1) = 2*(1-t);
    end
    %calculate the Cn's based on analytical result from 4.24
    Cn(n+1) = (0.5)*exp(-i*pi*n)*(sinc(i*n/2))^2;
end    
    F = fft(f);
    
% ploting the result
subplot(5,1,1), stem (0:N-1, abs(f),':diamondr');
title('Signal - abs')

subplot(5,1,2), stem (0:N-1,real(F)/N,...
                      'Linestyle','--',...
                      'color','green',...
                      'marker','*');
title('DFT - Real')

subplot(5,1,3), stem (0:N-1,real(Cn),...
                      'Linestyle','-',...
                      'color','black',...
                      'marker','x');
title('Cn - Real')

subplot(5,1,4), stem (0:N-1,imag(F)/N,...
                      'Linestyle','--',...
                      'color','green',...
                      'marker','*');
title('DFT - Imag')

subplot(5,1,5), stem (0:N-1,imag(Cn),...
                      'Linestyle','-',...
                      'color','black',...
                      'marker','x');
title('Cn - Imag')




