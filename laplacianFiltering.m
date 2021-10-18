function [output,gradientC] =  laplacianFiltering(A,mask,scale)
    A = mat2gray(A);
    [numRows,numCols] = size(A);
    [maskRows,maskCols] = size(mask);
    output = zeros(numRows,numCols);
    scaledLaplacian = zeros(maskRows,maskCols);
    for i = 1:maskRows
        for j = 1:maskCols
            scaledLaplacian(i,j) = scale * mask(i,j); 
        end
    end
    
    gradientC = spatialFiltering(A,scaledLaplacian);
    
    for i = 1:numRows
        for j = 1:numCols
            output(i,j) = A(i,j) + gradientC(i,j);
        end
    end

    output = mat2gray(output);
    disp(class(output));
end

