function [res] = inverse(X)

    if min(size(X) == [2, 2])
        determinant = X(1, 1) * X(2, 2) - X(1, 2) * X(2, 1);

        if !determinant
            disp("[ERROR]: matrix is singular (noninvertible)");
            return;
        end

        mask = [X(2, 2) -X(1, 2); -X(2, 1) X(1, 1)];
        res = (1 / determinant) * mask;
    elseif min(size(X) == [3, 3])
        % 1. Transform X to row echelon matrix:
        % - For non-singular square matrices, "row echelon" and "upper triangular" are equivalent. Reference: https://math.stackexchange.com/questions/1720647/is-there-no-difference-between-upper-triangular-matrix-and-echelon-matrixrow-ec
        [L, U, P] = lu(X);
        echelon = U;

        % 2. Reference row is always the third.
        % 3. Calculate algebraic subsection.
        a = X(3, 3) * (-1)^(3 + 3) * det(X(1:2, 1:2));
        determinant = det(X);

        if !determinant
            disp("[ERROR]: matrix is singular (noninvertible)");
            return;
        end

    else
        disp("[ERROR]: not support");
    end

end

% Reference: https://www.wikihow.vn/T%C3%ACm-ngh%E1%BB%8Bch-%C4%91%E1%BA%A3o-c%E1%BB%A7a-ma-tr%E1%BA%ADn-3x3

