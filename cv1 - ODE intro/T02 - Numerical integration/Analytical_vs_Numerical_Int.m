clear all
close all
clc

%% Parameter of the velocity function
tmin = 0;
tmax = 8;
N = 100;

t = linspace(tmin,tmax,N);
%% The functions 
% Velocity
v = t.*(8-t);
% Position
x = t.^2.*(4-t/3);

%% Velocity Plot
subplot(2,1,1)
plot(t,v,'LineWidth',2)
xlabel('t [s]', 'FontSize', 24)
ylabel('v [m/s]', 'FontSize', 24)
title('v = f(t)', 'FontSize', 24)
grid on
hold on 

%% Position Plot
subplot(2,1,2)
plot(t,x,'LineWidth',2)
xlabel('t [s]', 'FontSize', 24)
ylabel('x [m]', 'FontSize', 24)
title('x = \int f(t) dt', 'FontSize', 24)
grid on
hold on 

waitforbuttonpress;

%% Analytical solution
t = 8;
AnX =  t.^2.*(4-t/3);
%% Step Size
dT = [1,0.5,0.1,0.05,0.01,0.005,0.001];
L = length(dT);
Output = [];
%% Euler Method
for i = 1:L
    NoI = (tmax - tmin)/dT(i);
    tn = 0;
    vIntPrev = 0;
    tic
    for j = 1:NoI

        vY = tn*(8-tn);
        
        vInt = vIntPrev + vY*dT(i);
        tn = tn + dT(i); % t_n+1;
        vIntPrev = vInt;


    end
    Time = toc;
    Output(i,:) = [j,Time,-vInt+AnX];
end

waitforbuttonpress;

figure
plot(Output(:,1),Output(:,3), 'LineWidth', 2)
xlabel('Iteration No. [-]', 'FontSize', 24)
ylabel('Error [m]', 'FontSize', 24)
title('Number of itteration vs error', 'FontSize', 24)
grid on
hold on 

waitforbuttonpress;

figure
plot(Output(:,1),Output(:,3), 'LineWidth', 2)
xlabel('Iteration No. [-]', 'FontSize', 24)
ylabel('Error [m]', 'FontSize', 24)
title('Number of itteration vs error', 'FontSize', 24)
grid on
hold on 
ylim([0,0.005])