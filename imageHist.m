function [res] = imageHist(A)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    [numRows,numCols] = size(A);
    disp(numRows);
    disp(numCols);
    res = zeros(256,1);
    for i = 1:numRows
        for j = 1:numCols
            index = A(i,j)+1;%start from 1 to 256 but the color intensity is 0-255 
            res(index,1) = res(index,1) + 1;
        end
    end
end

