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
xlabel('t [s]', 'FontSize', 24)
ylabel('x', 'FontSize', 24)
title('dx/dt - 0.5x = 0', 'FontSize', 24)
grid on
hold on 
 
%% Solver parameter setting 
% Time step
Ts =0.1;
% Number of itteration
NoI = (xmax - xmin)/Ts;

%% Initialization
x = 5;
t = 0
subplot(2,1,2)
plot(t,x,'rx')
xlabel('t [s]', 'FontSize', 24)
ylabel('x', 'FontSize', 24)
grid on
hold on 
for i = 1:NoI
    
    dx = - 0.5*x;
    
    %% Updating Position
    x = x + Ts*dx;
    t = t+Ts;
    plot(t,x,'rx')
end