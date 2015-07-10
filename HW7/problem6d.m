%Pratap Luitel
%Engs 92
%Assignment 7, Problem 6d

x = -20:0.5:20;
z = zeros(9,length(x)); %z matrix with 0 as entries
for i = 1:9
    for j = 1:length(x)
        z(i,j) = x(j) + (i-5)*1i; %fill up the right value in the matrix
    end
end
%calculate w from z
w = 1./conj(z);

%plot all the lines in the z plane
subplot(1,2,1)
plot(z');
title('z-plane')

%plot all the circles in the w plane
subplot(1,2,2)
plot(w');
title('w-plane')
axis equal;
axis([-2,2,-2,2])
