clear all
close all
clc

Tmax = 200; 
X0 = [1200;0]; %Initial Conditions

odefun = @eqRainDrop;
options = odeset('Events', @fallEvents);

[t,x] = ode45(odefun,[0,Tmax],X0,options);

y = x(:,1);
v = x(:,2);

%% Plot
subplot(1,2,1)
plot(t,y,'LineWidth',2)
hold on 
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$y [m]$', 'FontSize', 24,'interpreter','latex')
title('$Rain Drop$', 'FontSize', 24,'interpreter','latex')
grid on

subplot(1,2,2)
plot(t,v,'LineWidth',2)
hold on 
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$\dot{y} [m]$', 'FontSize', 24,'interpreter','latex')
grid on

Vmax = max(abs(v));
fprintf('Terminal velocity %.2f \n', Vmax)

