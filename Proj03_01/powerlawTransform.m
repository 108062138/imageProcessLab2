function [res] =  powerlawTransform(A,c,r)
    [numRows,numCols] = size(A);
    for i = 1:numRows
        for j = 1:numCols
            A(i,j) = c * power(0.001+A(i,j),r);
        end
    end
    
    res = A;
    res = single(res);
end
