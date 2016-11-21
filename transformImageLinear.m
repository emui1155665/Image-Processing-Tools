function [ J ] = transformImageLinear( in, m )
A = imread(in);
I = rgb2gray(A);
I = im2double(I);
row = size(I,1);
col = size(I,2);
J = zeros(row,col);
J = im2double(J);
for xp=1:size(I,1)
    for yp=1:size(I,2)
        C = inv(m) * [xp;yp;1];
        x0 = floor(C(1));
        y0 = floor(C(2));
        x1 = x0+1;
        y1 = y0+1;
        x = C(1);
        y = C(2);
        if(x0>=1 && y0>=1 && x1<=row && y1<=col)  
          Iy0 = I(x0,y0)*(x1-x) + I(x1,y0)*(x-x0);
          Iy1 = I(x0,y1)*(x1-x) + I(x1,y1)*(x-x0);
          J(xp,yp) = Iy0*(y1-y) + Iy1*(y-y0);
        end
    end
end


