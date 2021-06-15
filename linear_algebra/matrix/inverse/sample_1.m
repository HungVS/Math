X = round(10*rand(3,3));

X = [ 1 2 3; 0 1 4; 5 6 0];
X = [1 3 2; 2 1 3; 3 2 1];

% 1. Transpose: 
M = X';

% 2. Calculate child determinnants:
M = [
	det(M(2:3, 2:3)) det(M(2:3,1:2:3)) det(M(2:3, 1:2));
	det(M(1:2:3, 2:3)) det(M(1:2:3, 1:2:3)) det(M(1:2:3, 1:2));
	det(M(1:2, 2:3)) det(M(1:2, 1:2:3)) det(M(1:2, 1:2));
];

% 3. Calculate algebraic subsection: 
for i = 1:3
	for j = 1:3
		M(i,j) = (-1)^(i+j) * M(i,j);
	end
end

% 4. Calculate determinant: 
determinant = det(X);

% 5. Calculate inverse:
inverseX = (1/determinant)*M;

inverseX
inv(X)

% Exercises: 
% 1. https://123docz.net/document/404770-giai-bai-tap-ma-tran-nghich-dao.htm
% 2. https://www.vted.vn/tin-tuc/cac-phuong-phap-tinh-dinh-thuc-cua-ma-tran-4785.html
