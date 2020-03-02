function [Solution] = RKBouncingBall(Tmax, Ts,X0)
%This function was created to solve the diff equation of general form by using
%Runge-Kutta method
% As input this fction takes the length of time interval in seconds the
% step size and the initial condition and also the size of external force
% in x direction

% Number of itteration
NoI = Tmax/Ts;
% Coefficient of Restitution
R = 0.9;

%% Initialization
X = X0;
t = 0;


for i = 1:NoI
    
    k1 = Ts*EqBouncingBall(X(:,i));
    k2 = Ts*EqBouncingBall(X(:,i) + k1/2);
    k3 = Ts*EqBouncingBall(X(:,i) + k2/2);
    k4 = Ts*EqBouncingBall(X(:,i) + k3);
    
    %% Updating Position
    X(:,i+1) = X(:,i) + (1/6)*(k1+2*k2+2*k3+k4);
    
    %% Rudimentary zero-crossing detector
    if X(3,i+1) < 0 
       
        X(4,i+1) = -X(4,i+1)*sqrt(R);
    end
    
    t(i+1) = t(i)+Ts;
    
end
%% 
Solution = [t;X];

end

