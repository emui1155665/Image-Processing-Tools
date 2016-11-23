function [ J ] = sharpen( input )
%SHARPEN Summary of this function goes here
%   Detailed explanation goes here
A = imread(input);
h = [0,1,0; 1,-4,1; 0,1,0];
J= A - imfilter(A,h);

