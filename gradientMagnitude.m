function [ magnitude ] = gradientMagnitude( input )
%GRADIENTMAGNITUDE Summary of this function goes here
%   Detailed explanation goes here
A = imread(input);
A = im2double(A);
fx = [-1,-2,-1;0,0,0;1,2,1];
fy = [-1,0,1;-2,0,2;-1,0,1];
x = imfilter(A,fx);
y = imfilter(A,fy);
for a = 1:size(A,1)
    for b = 1:size(A,2)
        magnitude(a,b) = sqrt((x(a,b)).^2+(y(a,b)).^2);
    end
end