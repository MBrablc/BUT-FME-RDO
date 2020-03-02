clear all
close all
clc

%% Solver Initialization

Ts = 0.01;
Tmax = 10;

%% Initial Condition
X0 = [0;0.3;5;0];

%% Sample times for testing zero-crossing detection
dT = [ 0.5,0.1,0.05,0.01,0.005];
L = length(dT);
for i = 1:L
    Ts = dT(i);
    [Solution] = RKBouncingBall(Tmax, Ts,X0);
    
    t = Solution(1,:);
    x = Solution(2,:);
    y = Solution(4,:);
    plot(x,y,'LineWidth',2)
    hold on 

    xlabel('$x [m]$', 'FontSize', 24,'interpreter','latex')
    ylabel('$y [m]$', 'FontSize', 24,'interpreter','latex')
    title('$Bouncing Ball$', 'FontSize', 24,'interpreter','latex')
    legend( 'Ts = 0.5','Ts = 0.1','Ts = 0.05','Ts = 0.01','Ts = 0.005','FontSize',14)
    grid on
    xlim([0,x(end)])
end