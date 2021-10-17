function [res] =  logTransform(A,c)
    [numRows,numCols] = size(A);
    disp(log10(100));
    disp(c);
    for i = 1:numRows
        for j = 1:numCols
            dataCast = cast(A(i,j),'single');
            newIntensity = cast(c*log10(1+dataCast),'uint8');
            A(i,j) = newIntensity;
        end
    end
    
    res = A;
end

