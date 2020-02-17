clear all
close all
clc

Tmax = 10;
Ts = 0.5;
x0 = 5;


[STrap,MSE] = Trapezoid(Tmax, Ts,x0);
fprintf('The MSE of the Trapezoidal Rule for step size %0.2f is %0.5f\n',Ts,MSE);

[SEuler,MSE] = Euler(Tmax, Ts,x0);
 fprintf('The MSE of Euler for step size %0.2f is %0.5f\n',Ts,MSE)
 

t = linspace(0,10,100);
x = 5*exp(-0.5*t);
plot(t,x,'k','LineWidth',2)
hold on 
plot(STrap(1,:),STrap(2,:),'bx')
plot(SEuler(1,:),SEuler(2,:),'rx')
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\dot{x} + 0.5x = 0$', 'FontSize', 24,'interpreter','latex')
legend('Analytical Solution','Trapezoidal Rule', 'Euler Method','FontSize',14)
grid on
hold on 