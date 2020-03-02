function [dX] = EqBouncingBall(t,X)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
g = 9.81;
m = 2;

dX = [0 1 0 0;0 0 0 0;0 0 0 1;0 0 0 0]*X + [0; 0; 0; -g];

end

