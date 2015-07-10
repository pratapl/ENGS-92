%Pratap Luitel
%Engs 92
%HW-2, Problem 6 (3.15 a, b and c )
%Reference: worked on code originally provided by Markus Testorf on 2011-09-16

N = 16;        % length of signal vector
n = 0:(N-1);    % vector index
Nc = 500;       % number of samples for continuous signal approximation


    nu = 2.5;     % out of bin sinusoid ; 
    
    f = cos(2*pi*nu * n/N);             % sampling the discrete vector elements
    fc = cos(2*pi*nu*(1:Nc)/Nc);
    F = fft(f);                         % computing the DFT
    
    
    %direct values from f and F vectors
    fprintf('Direct values from f and F vectors\n');
    fprintf('f[0]= %f\n',f(1));
    fprintf('F[0]= %f\n',F(1));
    
    
    %using area theorem
    fprintf('Area Theorem Verification\n');
    fprintf('f[0]= %f\n' ,  sum(F)/N);
    fprintf('F[0]= %f\n' ,  sum(f));
    
 
    fprintf('Parsevals Theorem Verification \n');
    fprintf('The sum of f[n]^2 where n = 0 to N-1 is: %f\n',norm(f,2)^2);
    fprintf('The sum of (F[n]^2)/N where n = 0 to N-1 is: %f\n',(norm(F,2)^2)/N);
    
    subplot(2,1,1), stem (n, real(F));
    title('DFT - real')
    subplot(2,1,2), stem (n, imag(F));
    title('DFT - imag')
