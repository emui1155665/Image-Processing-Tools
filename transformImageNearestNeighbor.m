function [ J ] = transformImageNearestNeighbor( in, m )
A = imread(in);
I = rgb2gray(A);
I = im2double(I);
row = size(I,1);
col = size(I,2);
J = zeros(row,col);
J = im2double(J);
for x1=1:size(I,1)
    for y1=1:size(I,2)
        C = inv(m) * [x1;y1;1];
        x = round(C(1));
        y = round(C(2));
        if(x>=1 && y>=1 && x<=row && y<=col)  
         J(x1,y1) = I((x),(y));
        end
    end
end
