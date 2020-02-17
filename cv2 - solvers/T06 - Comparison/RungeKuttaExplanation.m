clear all
close all
clc
%This function was created to solve the diff equation dx+0.5x = 0 by using
%Runge-Kutta method
% As input this fction takes the length of time interval in seconds the
% step size and the initial condition

t = linspace(0,10,100);
x = 5*exp(-0.5*t);
plot(t,x,'LineWidth',2)
xlabel('$t [s]$', 'FontSize', 24,'interpreter','latex')
ylabel('$x$', 'FontSize', 24,'interpreter','latex')
title('$\dot{x} + 0.5x = 0$', 'FontSize', 24,'interpreter','latex')
grid on
hold on 

%% Solver parameter setting 
Ts = 0.5
x0 = 5;
Tmax = 10;
% Number of itteration
NoI = Tmax/Ts;

%% Initialization
x = x0;
t = 0;

for i = 1:NoI
    
    k1 = -Ts* 0.5*x(i);
    k2 = -Ts*0.5*(x(i) + k1/2);
    k3 = -Ts*0.5*(x(i) + k2/2);
    k4 = -Ts*0.5*(x(i)+k3);
    
    %% Update
    
    t(i+1) = t(i)+Ts;
    x(i+1) = x(i) + (1/6)*(k1+2*k2+2*k3+k4);
    
    %% Calculating points for drawing the tangent line
    % Line to k1
    x1_k1 = x(i) - 2*k1;
    x2_k1 = x(i) + 2*k1;
    
    der_k1 = plot([t(i),t(i)],[0,x(i)],'r')
    tan_k1 = plot([t(i)-2*Ts,t(i)+2*Ts],[x1_k1,x2_k1],'r','LineWidth',2)
    
    waitforbuttonpress;
    % Delete
    delete(tan_k1)
    delete(der_k1)
    
    TsHalf = t(i) + Ts/2;
    
    % Line to k2
    x_k2 = x(i) + k1/2;
    x1_k2 = x_k2 - 2*Ts*k2;
    x2_k2= x_k2 + 2*Ts*k2;
    
    der_k2 = plot([TsHalf ,TsHalf ],[0,x_k2],'r')
    tan_k2 = plot([TsHalf-2*Ts,TsHalf+2*Ts],[x1_k2,x2_k2],'b','LineWidth',2)
    
    waitforbuttonpress;
    % Delete
    delete(tan_k2)
    delete(der_k2)
    
    % Line to k3
    x_k3 = x(i) + k2/2;
    x1_k3 = x_k3 - 2*Ts*k3;
    x2_k3= x_k3 + 2*Ts*k3;
    
    der_k3 = plot([TsHalf ,TsHalf ],[0,x_k3],'r')
    tan_k3 = plot([TsHalf-2*Ts,TsHalf+2*Ts],[x1_k3,x2_k3],'g','LineWidth',2)
    
    waitforbuttonpress;
    % Delete
    delete(tan_k3)
    delete(der_k3)
    
    % Line to k3
    x1_k4 = x(i+1) - 2*Ts*k4;
    x2_k4= x(i+1)+ 2*Ts*k4;
    
    der_k4 = plot([t(i+1) ,t(i+1) ],[0,x(i+1)],'r')
    tan_k4 = plot([t(i+1)-2*Ts,t(i+1)+2*Ts],[x1_k4,x2_k4],'m','LineWidth',2)
    
    waitforbuttonpress;
    % Line to k4
    delete(tan_k4)
    delete(der_k4)
end

