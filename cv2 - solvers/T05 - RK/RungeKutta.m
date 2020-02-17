function [Solution,MSE] = RungeKutta(Tmax, Ts,x0)
%This function was created to solve the diff equation dx+0.5x = 0 by using
%Runge-Kutta method
% As input this fction takes the length of time interval in seconds the
% step size and the initial condition

%% Solver parameter setting 

% Number of itteration
NoI = Tmax/Ts;

%% Initialization
x = x0;
t = 0;

for i = 1:NoI
    
    k1 = Ts*-0.5*x(i);
    k2 = Ts*-0.5*(x(i) + k1/2);
    k3 = Ts*-0.5*(x(i) + k2/2);
    k4 = Ts*-0.5*(x(i)+k3);
    
    
    %% Updating Position
    x(i+1) = x(i) + (1/6)*(k1+2*k2+2*k3+k4);
    t(i+1) = t(i)+Ts;
    
end

%% Analytical solution
xAna = x0*exp(-0.5*t); 

%% MSE calculation
L = length(xAna);
MSE = 1/L*sum((xAna - x).^2);
%% 
Solution = [t;x];
end




