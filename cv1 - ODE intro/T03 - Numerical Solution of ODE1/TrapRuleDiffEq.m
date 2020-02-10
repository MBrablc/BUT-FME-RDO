clear all
close all
clc

%%  Interval of solution
xmin = 0;
xmax = 10;

%% Plot the solution
t = linspace(0,10,100);
x = 5*exp(-0.5*t);
subplot(2,1,1)
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
xCur = 5;
t = 0

subplot(2,1,2)
plot(t,xCur,'rx')
grid on
hold on
xlabel('t [s]', 'FontSize', 24)
ylabel('x', 'FontSize', 24)

%% Solver
for i = 1:NoI
    
    % f_k at time step k 
    fCur = -0.5* xCur;
    
    % aproximating f_k+1 at time step k
    xNextHat = xCur + Ts*fCur;
    fNextHat = -0.5*xNextHat;
    
    % Update: f_k+1 at time step k+1
    xNext = xCur + Ts/2 * (fCur + fNextHat);
    t = t +Ts;
    xCur = xNext;
    
    % Plot
    plot(t,xNext,'rx')
    
end