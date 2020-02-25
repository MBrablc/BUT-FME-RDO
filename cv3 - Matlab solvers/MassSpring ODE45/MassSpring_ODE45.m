clear all
close all
clc

Ts = 0.01;
Tmax = 20;

%% Initial Condition
X0 = [0.05; 0];
% Anonymous function 
odeFcn = @MassSpringSS;
%% Runge-Kutta Solver
[t,y] = ode45(odeFcn,[0 Tmax],X0);

%% Plot
subplot(2,1,1)
plot(t,y(:,1),'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\ddot{x}m + kx = 0$', 'FontSize', 24,'interpreter','latex')
grid on
xlim([0,Tmax])
subplot(2,1,2)
plot(t,y(:,2),'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$\dot{x}$', 'FontSize', 24,'interpreter','latex')
grid on
xlim([0,Tmax])
