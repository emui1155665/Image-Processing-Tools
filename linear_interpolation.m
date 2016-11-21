function [] = linear_interpolation( I )
K = imread(I);
row = size(K,1);
col = size(K,2);
m1 = rotateAboutCenterTransformation(row,col,pi/6);
m2 = rotateAboutCenterTransformation(row,col,pi/4);
m3 = rotateAboutCenterTransformation(row,col,pi/2);
imwrite(transformImageLinear(I,m1),'logo_linear_rot30.png');
imwrite(transformImageLinear(I,m2),'logo_linear_rot45.png');
imwrite(transformImageLinear(I,m3),'logo_linear_rot90.png');
