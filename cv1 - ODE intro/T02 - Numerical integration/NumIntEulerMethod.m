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
title('$x = \int{f(t)dt}$', 'FontSize', 24,'interpreter','latex')
grid on
hold on 

%% Step Size
dT = 0.5;

NoI = (tmax - tmin)/dT;
tn = 0;
vIntPrev = 0;

for i = 1:NoI
    
    vY = tn*(8-tn);
    tn_1 = tn + dT; % t_n+1
    %% Velocity Euler Rectangles
    subplot(2,1,1)
    plot([tn,tn,tn_1,tn_1],[0,vY,vY,0],'r','LineWidth',2 );
    
    %% Position as integrel according to the Euler method
    subplot(2,1,2)
    vInt = vIntPrev + vY*dT;
    plot([tn,tn_1],[vIntPrev,vInt],'r','LineWidth',2 );
    
    
    tn = tn_1;
    vIntPrev = vInt;
    pause(0.5)
    
end