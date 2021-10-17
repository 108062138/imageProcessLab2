function [output,T] = histEqualization(A)
    histVector =  imageHist(A);
    [numRows,numCols] = size(A);
    disp(numRows);
    disp(numCols);
    L = 256;
    T = zeros(L,1);
    output = zeros(numRows,numCols);
    prefix = 0;
    for i = 1:L
        T(i,1) = (L-1)/numRows/numCols*(prefix+histVector(i,1));
        prefix = prefix+histVector(i,1);
    end
      
    T = uint8(255*mat2gray(T));
    for i = 1:numRows
        for j = 1:numCols
            mvIntensity = A(i,j)+1;%to random access the histVector
            output(i,j) = uint8(T(mvIntensity,1));
        end
    end
    output = uint8(255*mat2gray(output));
end

