function [res] =  logTransform(A,c)
    [numRows,numCols] = size(A);
    for i = 1:numRows
        for j = 1:numCols
            newIntensity = c*log10(1+A(i,j));
            A(i,j) = newIntensity;
        end
    end
    
    res = A;
    res = single(res);
end

