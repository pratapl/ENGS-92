%Pratap Luitel
%Engs 92, Problem 3
%2.15 (b) and (d)


%u and v vectors
u = [2,1+i,i,1-i];
v = [1,i,-1,i];


% (b)
n1 = norm(v,1);
n2 = norm(v,2);
nInf = norm(v,inf);

fprintf('The p1 norm is %f\n' ,n1);
fprintf('The p2 norm is %f\n' ,n2);
fprintf('The p infinite norm is %f\n' ,nInf);

%(d)
innerProductOfVU = dot(v,conj(u'));  
innerProductOfUV = dot(u,conj(v'));





