function [res] =  powerlawTransform(A,c,r)
    A = mat2gray(A);
    [numRows,numCols] = size(A);
    for i = 1:numRows
        for j = 1:numCols
            A(i,j) = cast(c * power(double(0.001+A(i,j)),r),'uint8');
        end
    end
    
    res = A;
    res = mat2gray(res);
end
