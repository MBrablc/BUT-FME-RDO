clear all
close all
clc

%% Interval of solution
xmin = 0;
xmax = 10;

%%  Plot the analytical solution
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
Ts =0.5;
% Number of itteration
NoI = (xmax - xmin)/Ts;

%% Initialization
x0 = 5;
x = x0;
t = 0

for i = 1:NoI
    
    
    dx = - 0.5*x;
    %% Calculating points for drawing the tangent line
    x1 = x - 0.75*dx;
    x2 = x+ 0.75*dx;
    der = plot(t,x,'rx')
    tan = plot([t-0.75,t+0.75],[x1,x2],'r','LineWidth',1.5)
    
    %% Updating Position
    x = x + Ts*dx;
    t = t+Ts;
    
    %% Plot
    derF =  plot(t,x,'kx')
    derL = plot([t,t],[0,x],'g-','LineWidth',1.5)
    
    waitforbuttonpress;
    %% Delete handles 
    delete(der)
    delete(tan)
    delete(derF)
    delete(derL)
    
end