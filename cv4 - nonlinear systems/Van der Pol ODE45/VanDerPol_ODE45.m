clear all
close all
clc

Ts = 0.01;
Tmax = 20;

%% Initial Condition
X0 = [0.5; 0];


% Anonymous function 
odeFcn = @EqVDP;
%% Runge-Kutta Solver
[t,y] = ode45(odeFcn,[0 Tmax],X0);

x = y(:,1);
dx = y(:,2);
%% Plot

subplot(2,1,1)
plot(t,x,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$Van der Pol oscilator$', 'FontSize', 24,'interpreter','latex')
grid on
xlim([0,Tmax])
subplot(2,1,2)
plot(t,dx,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$\dot x$', 'FontSize', 24,'interpreter','latex')
title('$Van der Pol oscilator$', 'FontSize', 24,'interpreter','latex')
grid on

%% Plot State Space

figure
plot(dx,x,'LineWidth',2)
xlabel('$\dot x [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$ x$', 'FontSize', 24,'interpreter','latex')
title('$Van der Pol oscilator State Space$', 'FontSize', 24,'interpreter','latex')
grid on