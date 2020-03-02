function [dX] = EqVDP(t,X)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
mu = 0.9;
% Force input
Fmax = 0; % N
F = Fmax*sin(2*pi*2*t);

dX = [X(2);
           mu*(1-X(1)^2)*X(2) - X(1) + F];
end

