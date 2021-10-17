function [res] =  spatialFiltering(A,mask)
    [numRows,numCols] = size(A);
    res = zeros(numRows,numCols);
    [maskRows,maskCols] = size(mask);
    disp(mask);
    marginRows = (maskRows+1)/2;
    marginCols = (maskCols+1)/2;
    tmp = zeros(numRows+2*marginRows,numCols+2*marginCols);
    
    for i = 1:numRows + 2*marginRows
        for j = 1:numCols + 2*marginCols
            if i>marginRows && i<numRows+marginRows && j<numCols+marginCols && j>marginCols
                tmp(i,j) = A(i-marginRows,j-marginCols);
            end
        end
    end
    for i = 1:numRows
        for j = 1:numCols
            inAi = i+marginRows;
            inAj = j+marginCols;
            val = 0;
            for keri = 1:maskRows
                for kerj = 1:maskCols
                    disp(inAi-(keri-marginRows));
                    disp(inAj-(kerj-marginCols));
                    w = mask(keri,kerj);
                    f = tmp(inAi-(keri-marginRows),inAj-(kerj-marginCols));
                    val = val + w * f;
                end
            end
            res(i,j) = val; 
        end
    end
    
end

