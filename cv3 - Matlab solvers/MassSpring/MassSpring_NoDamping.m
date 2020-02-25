clear all
close all
clc

%% Solver Initialization

Ts = 0.01;
Tmax = 20;

%% Initial Condition
X0 = [0.05; 0];

Solution_E = GeneralEuler(Tmax, Ts,X0);
Solution_RK = GeneralRungeKutta(Tmax, Ts,X0);

t_E = Solution_E(1,:);
x_E = Solution_E(2,:);
dx_E = Solution_E(3,:);

t_RK = Solution_RK(1,:);
x_RK = Solution_RK(2,:);
dx_RK = Solution_RK(3,:);

subplot(2,1,1)
plot(t_E,x_E,'LineWidth',2)
hold on 
plot(t_RK,x_RK,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\ddot{x}m + kx = 0$', 'FontSize', 24,'interpreter','latex')
legend( 'Euler Method','Runge-Kutta method','FontSize',14)
grid on
xlim([0,Tmax])
subplot(2,1,2)
plot(t_E,dx_E,'LineWidth',2)
hold on
plot(t_RK,dx_RK,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$\dot{x}$', 'FontSize', 24,'interpreter','latex')
legend( 'Euler Method','Runge-Kutta method','FontSize',14)
grid on
xlim([0,Tmax])


