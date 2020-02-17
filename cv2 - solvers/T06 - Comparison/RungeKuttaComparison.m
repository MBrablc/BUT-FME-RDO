clear all
close all
clc

Tmax = 10;
Ts = 2;
x0 = 5;

[SEuler,MSE] = Euler(Tmax, Ts,x0);
 fprintf('The MSE of Euler for step size %0.2f is %0.7f\n',Ts,MSE)

[STrap,MSE] = Trapezoid(Tmax, Ts,x0);
fprintf('The MSE of the Trapezoidal Rule for step size %0.2f is %0.7f\n',Ts,MSE);


 
 [SRK,MSE] = RungeKutta(Tmax, Ts,x0);
 fprintf('The MSE of Runge-Kutta method for step size %0.2f is %0.7f\n',Ts,MSE)

t = linspace(0,10,100);
x = 5*exp(-0.5*t);
plot(t,x,'g','LineWidth',2)
hold on 
%% Trapezoid
plot(STrap(1,:),STrap(2,:),'kx')
%% Euler
plot(SEuler(1,:),SEuler(2,:),'rx')
%% Runge-Kutta
plot(SRK(1,:),SRK(2,:),'mx')
%% Plot Parameters
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\dot{x} + 0.5x = 0$', 'FontSize', 24,'interpreter','latex')
legend('Analytical Solution','Trapezoidal Rule', 'Euler Method','Runge-Kutta method','FontSize',14)
grid on
hold on 