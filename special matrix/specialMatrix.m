function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);

% Now the real challenge is to fill in the correct values of A
if nargin ~= 2
    error('Must have two inputs for a n x m matrix')
else
A(1,:) = 1:m;
A(:,1) = 1:n;
for q = 2:n
    for k = 2:m
        A(q,k) = (A(q-1,k)+A(q,k-1));
    end
end
end
end