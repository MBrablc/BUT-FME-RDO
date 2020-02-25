function [Solution] = GeneralEuler(Tmax, Ts,X0)
%This function is a general differential equation solver it is based on the Euler's method
% As input this fction takes the length of time interval in seconds the
% step size and the initial condition


%% Solver parameter setting 

% Number of itteration
NoI = Tmax/Ts;

%% Initialization
X = X0;
t = 0;

for i = 1:NoI
    
    %% system of LODE 
    dX = MassSpringSS(X(:,i));
    
    %% Updating Position
    X(:,i+1) = X(:,i) + Ts*dX;
    t(i+1) = t(i)+Ts;
    
end

Solution = [t;X];

end

