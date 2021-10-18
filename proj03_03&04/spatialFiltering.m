function [res] =  spatialFiltering(A,mask)
    [numRows,numCols] = size(A);
    [maskRows,maskCols] = size(mask);
    res = zeros(numRows,numCols);
    centermI = (1+maskRows)/2;
    centermJ = (1+maskCols)/2;

    halfmI = (maskRows-1)/2;
    halfmJ = (maskCols-1)/2;
    nhi = -1 * halfmI;
    nhj = -1 * halfmJ;
    for i = 1:numRows
        for j = 1:numCols
            for covi = nhi:halfmI
                for covj = nhj:halfmJ
                    val = 0;
                    if i+covi >=1 && i+covi <=numRows && j+covj >=1 && j+covj <=numCols
                        %disp(covi+centermI+covj+centermJ);
                        val = A(i+covi,j+covj)*mask(covi+centermI,covj+centermJ);
                    end
                    res(i,j) = res(i,j) + val;
                end
            end
        end
    end

    %[maskRows,maskCols] = size(mask);
    %disp(mask);
    %marginRows = (maskRows+1)/2;
    %marginCols = (maskCols+1)/2;
    
    %tmp = zeros(numRows+2*marginRows,numCols+2*marginCols);
    %
    %for i = 1:numRows + 2*marginRows
    %    for j = 1:numCols + 2*marginCols
    %        if i>marginRows && i<numRows+marginRows && j<numCols+marginCols && j>marginCols
    %            tmp(i,j) = A(i-marginRows,j-marginCols);
    %        end
    %    end
    %end
    
    %for i = 1:numRows
    %    for j = 1:numCols
    %        inAi = i+marginRows;
    %        inAj = j+marginCols;
    %        val = 0;
    %        for keri = 1:maskRows
    %            for kerj = 1:maskCols
    %                disp(inAi-(keri-marginRows));
    %                disp(inAj-(kerj-marginCols));
    %                w = mask(keri,kerj);
    %                f = tmp(inAi-(keri-marginRows),inAj-(kerj-marginCols));
    %                val = val + w * f;
    %            end
    %        end
    %        res(i,j) = val; 
    %    end
    %end
    
    %res = mat2gray(res);
end

