function [ J ] = negativeTransform( input )
    A = imread(input);
    row = size(A,1);
    col = size(A,2);
    for x = 1:row
        for y = 1:col
            J(x,y) = 255-A(x,y);
        end
    end
end