clear all
close all
clc

%% Interval of solution
xmin = 0;
xmax = 10;

%%  Plot the analytical solution
subplot(2,1,1)
t = linspace(0,10,100);
x = 5*exp(-0.5*t);
plot(t,x,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\dot{x} + 0.5x = 0$', 'FontSize', 24,'interpreter','latex')
grid on
hold on 
 
x0 = 5;
Ts1 = 0.05;
Ts2 = 0.5;
Tmax = 10;

 [S1,MSE1] = Euler(Tmax, Ts1,x0);
 fprintf('The MSE of Euler for step size %0.2f is %0.7f\n',Ts1,MSE1)
 [S2,MSE2] = Euler(Tmax, Ts2,x0);
 fprintf('The MSE of Euler for step size %0.2f is %0.7f\n',Ts2,MSE2)
 
subplot(2,1,2)
plot(S1(1,:),S1(2,:),'rx')
hold on
plot(S2(1,:),S2(2,:),'bx')
legend('Euler Method Ts = 0.01', 'Euler Method Ts = 0.5','FontSize',14)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
grid on

 