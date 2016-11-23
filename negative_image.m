function [ ] = hw2_negative_image( )
%reads the input, computes the negative image and writes it out
%   Detailed explanation goes here
    J = negativeTransform('spine.png');
    imwrite(J,'spine_negative.png');
end