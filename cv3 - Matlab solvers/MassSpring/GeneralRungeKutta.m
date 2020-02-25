function [Solution] = GeneralRungeKutta(Tmax, Ts,X0)
%This function was created to solve the diff equation of general form by using
%Runge-Kutta method
% As input this fction takes the length of time interval in seconds the
% step size and the initial condition

%% Solver parameter setting 

% Number of itteration
NoI = Tmax/Ts;

%% Initialization
X = X0;
t = 0;

for i = 1:NoI
    
    k1 = Ts*MassSpringSS(X(:,i));
    k2 = Ts*MassSpringSS(X(:,i) + k1/2);
    k3 = Ts*MassSpringSS(X(:,i) + k2/2);
    k4 = Ts*MassSpringSS(X(:,i) + k3);
    
    %% Updating Position
    X(:,i+1) = X(:,i) + (1/6)*(k1+2*k2+2*k3+k4);
    t(i+1) = t(i)+Ts;
    
end

%% 
Solution = [t;X];
end




