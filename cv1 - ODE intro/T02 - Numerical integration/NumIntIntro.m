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

%% Velocity Plot

plot(t,v,'LineWidth',2)
xlabel('t [s]', 'FontSize', 24)
ylabel('v [m/s]', 'FontSize', 24)
title('v = f(t)', 'FontSize', 24)
grid on
hold on 

%% Step Size
dT = 1;

NoI = (tmax - tmin)/dT;
tn = 0;
vIntPrev = 0;

for i = 1:NoI
    
    vY = tn*(8-tn);
    tn_1 = tn + dT; % t_n+1
    %% Velocity Euler Rectangles
    
    plot([tn,tn,tn_1,tn_1],[0,vY,vY,0],'r','LineWidth',2 );
    waitforbuttonpress;
    
    tn = tn_1;
    
end