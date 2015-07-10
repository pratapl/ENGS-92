%Pratap Luitel
%Engs 92
%Assignment 7, Problem 1

x = -20:1:0;
z = zeros(9,length(x)); %z matrix with 0 as entries
for i = 1:9
    for j = 1:length(x)
        z(i,j) = x(j) + (4-i)*1i; %fill up the right value in the matrix
    end
end

w = 1./conj(z);

plot(z')

plot(w')
axis equal
%(a)
% figure
% plot(real(w),imag(w))
% axis equal
% title('w-plane')
% xlabel('real(w)')
% ylabel('imag(w)')
% 
% fprintf('(a)\n');
% 
% %(c)
% fprintf('The -ve half of Z plane will show up in the -ve of W plane\n');
