function [dX] = MassSpringSS(t,X)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
k = 100;
m = 10;
A = [0 1; -k/m 0];
dX = A*X;
end

