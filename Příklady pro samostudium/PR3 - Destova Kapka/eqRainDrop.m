function [dx] = eqRainDrop(t,x)

    R = 1.5e-3; %m
    A = pi*R^2;
    Rho_Water = 1000; %kg/m^3
    Rho_Air = 1.29;
    c = 0.6;
    g = 9.81; 
    m = 4/3*pi*R^3*Rho_Water;
    
    dx = [x(2);
             1/(2*m)*Rho_Air*c*A*x(2)^2 - g];
end

