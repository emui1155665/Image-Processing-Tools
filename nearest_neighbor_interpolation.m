function [] = nearest_neighbor_interpolation( I )

K = imread(I);
row = size(K,1);
col = size(K,2);
m1 = rotateAboutCenterTransformation(row,col,pi/6);
m2 = rotateAboutCenterTransformation(row,col,pi/4);
m3 = rotateAboutCenterTransformation(row,col,pi/2);

imwrite(transformImageNearestNeighbor(I,m1),'logo_nearest_neighbor_rot30.png');
imwrite(transformImageNearestNeighbor(I,m2),'logo_nearest_neighbor_rot45.png');
imwrite(transformImageNearestNeighbor(I,m3),'logo_nearest_neighbor_rot90.png');
