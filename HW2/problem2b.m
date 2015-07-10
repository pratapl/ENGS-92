% Pratap Luitel
% Engs 92
% HW - 3, Problem 6


N = 128;         % length of signal vector
n = 0:(N-1);    % vector index
T = 1;
delT = T/N;
f = zeros(128,1);
for t = 0:(N-1) 
    if t*delT < 1/2
        f(t) = 2*t*delT;
    else
        f(t) = 2*(1-t)*delT;
    end
end    
    F = fft(f);
    % ploting the result
    title('Signal - Im')
    subplot(3,1,1), stem (n, real(f));
    %title('DFT - abs')
    %subplot(5,1,4), stem (n, real(F));
    %title('DFT - Re')   
    %subplot(5,1,5), stem (n, imag(F));
    %title('DFT - Im')
    
    pause
end
    


