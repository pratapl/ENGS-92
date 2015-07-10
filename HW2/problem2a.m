% Pratap Luitel
% Engs 92
% HW - 2, Problem 2(a)


N = 16;         % length of signal vector
n = 0:(N-1);    % vector index
Nc = 500;       % number of samples to approximate the "continuous" signal
nu = 1;         % smallest nonzero frequency dft bin

for nu = 0:2*N, nu 
    f = cos(2*pi*nu*n/N);       % sampling the discrete vector elements
    fc = cos(2*pi*nu*(1:Nc)/Nc);
    F = fft(f);
    % ploting the result
    subplot(3,2,1), plot (n, real(f), 'o', N*(1:Nc)./Nc, real(fc),'-');
    title('Signal - Re')
    subplot(3,2,2), plot (n, imag(f), 'o', N*(1:Nc)./Nc, imag(fc),'-');
    title('Signal - Im')
    subplot(3,2,3), stem (n, abs(F));
    title('DFT - abs')
    subplot(3,2,5), stem (n, real(F));
    title('DFT - Re')
    subplot(3,2,6), stem (n, imag(F));
    title('DFT - Im')
    
    pause
end
    


