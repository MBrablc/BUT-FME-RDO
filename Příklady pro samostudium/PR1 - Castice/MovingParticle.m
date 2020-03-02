clear all
close all
clc

Tmax = 5;
Ts = 0.01;
x0 = 3;

%% Solver parameter setting 

% Number of itteration
NoI = Tmax/Ts;

%% Initialization
x = x0;
t = 0;

for i = 1:NoI
    
    dx = eqMovingParticle(t,x(i))
    
    %% Updating Position
    x(i+1) = x(i) + Ts*dx;
    t(i+1) = t(i)+Ts;
    
end

plot(t,x,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\dot{x} = 0.3x - 0.3$', 'FontSize', 24,'interpreter','latex')
grid on
xlim([0,Tmax])
