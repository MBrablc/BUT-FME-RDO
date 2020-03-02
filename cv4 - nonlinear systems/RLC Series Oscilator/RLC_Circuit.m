clear all
close all
clc

% Maximal simulation time
Tmax = 0.1;
% frequency of the voltage source
f = 0; 

%% Initial Condition
X0 = [0; 0];

%% Runge-Kutta Solver
[t,X] = ode45(@(t,X) rlcOscilator(t,X,f),[0 Tmax],X0);

i = X(:,1);
u = X(:,2);

%% Plot
subplot(2,1,1)
plot(t,i,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$i_L$', 'FontSize', 24,'interpreter','latex')
title('$RLC Circuit$', 'FontSize', 24,'interpreter','latex')
grid on
xlim([0,Tmax])
subplot(2,1,2)
plot(t,u,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$ u_C$', 'FontSize', 24,'interpreter','latex')
grid on

