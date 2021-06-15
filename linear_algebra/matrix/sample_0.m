% 1. Identity matrix: 
eye(2);

% 2. Square matrix multiplication:
% - Multiplication between A and inverse A is commutative.
A = rand(2);
round(A*inv(A));
round(inv(A)* A);

% 3. Matrix multiplication is not commutative:
A = rand(2, 3);
B = rand(3, 2);
A*B;
B*A;

% 4. Properties of matrices:
% 4.1. Associativity:
A = rand(2,3);
B = rand(3,2);
C = rand(2,4);

round((A*B)*C - A*(B*C));

% 4.2. Distributivity: 
A = rand(2,3);
B = rand(2,3);
C = rand(3,2);

round((A + B)*C - (A*C + B*C));

% 4.3. Multiplication with Identity matrix: 
% - This is not commutative.
A = rand(2,3);
I1 = eye(2);
I2 = eye(3);

A
I1*A
A*I2
