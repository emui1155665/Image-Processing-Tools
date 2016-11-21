%load all the data
function [m] = rotateAboutCenterTransformation(width,height,angle)
%translation matrix
HT = [1,0,width/2+0.5; 0,1,height/2+0.5; 0,0,1];
HR = [cos(angle),-sin(angle),0; sin(angle),cos(angle),0; 0,0,1];

m = HT * HR / HT;


