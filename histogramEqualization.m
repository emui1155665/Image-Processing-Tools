function [ output ] = histogramEqualization( input )
%HISTOGRAMEQUALIZATION Summary of this function goes here
%   Detailed explanation goes here
A = imread(input);
Size = size(A,1)*size(A,2);
CDF = zeros(1,256);
PDF = zeros(1,256);
for x = 1 : size(A,1)
    for y = 1 : size(A,2)
        i = A(x,y);
        PDF(i+1) = PDF(i+1) + 1;
    end
end
PDF(1) = PDF(1)/Size;
CDF(1) = PDF(1);
for x = 2 : 256
    PDF(x) = PDF(x)/Size;
    CDF(x) = CDF(x-1)+PDF(x);
end
for x = 1 : size(A,1)
    for y = 1 : size(A,2)
        intensity = A(x,y);
        cdf = CDF(intensity+1);
        output(x,y) = cdf;
    end
end

