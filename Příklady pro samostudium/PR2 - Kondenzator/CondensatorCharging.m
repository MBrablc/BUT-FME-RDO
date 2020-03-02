clear all
close all
clc

Tmax = 2; 
X0 = 0;

odefun = @eqCondensatorCharging;

[t,x] = ode45(odefun,[0,Tmax],X0);

%%  Plots 

plot(t,x,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$U_C$', 'FontSize', 24,'interpreter','latex')
title('$\dot{U}_C = \frac{1}{CR}(U-U_C )$', 'FontSize', 24,'interpreter','latex')
grid on
xlim([0,Tmax])