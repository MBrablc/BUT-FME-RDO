function [Solution,MSE] = Trapezoid(Tmax, Ts,x0)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

% Number of itteration
NoI = Tmax/Ts;

%% Initialization
x = x0;
t = 0;


%% Solver
for i = 1:NoI
    
    % f_k at time step k 
    dx = -0.5* x(i);
    
    % aproximating f_k+1 at time step k
    xHat = x(i) + Ts*dx;
    dxHat = -0.5*xHat;
    
    % Update: f_k+1 at time step k+1
    x(i+1) = x(i) + Ts/2 * (dx + dxHat);
    t(i+1) = t(i) +Ts;
    
end

%% Analytical solution
xAna = x0*exp(-0.5*t); 

%% MSE calculation
L = length(xAna);
MSE = 1/L*sum((xAna - x).^2);
%% 
Solution = [t;x];
end

