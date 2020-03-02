function [dx] = eqCondensatorCharging(t,x)

U = 15; %V
R =  1e3; %Ohms
C = 25e-6; % Farads

dx = 1/(C*R)*(U-x);
end

