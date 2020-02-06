function [] = DrawHelix(fi,R)
% This function Draws Helix with continuously decreasing radius

N = length(fi)

for i = 1:N
    
    x = R*cos(fi(i));
    y = R*sin(fi(i));
    z = 0.1*(i-1);
    
    if(z <=5)
        plot3(x,y,z,'ro')
    elseif (z>5)&&(z<=10)
        plot3(x,y,z,'bo')
    else
        plot3(x,y,z,'go')
    end
    
    hold on
    grid on
    xlim([-8,8])
    ylim([-8,8])
    zlim([0,16])
    xlabel('x')
    ylabel('y')
    zlabel('z')
    title('Helix')
    
    R = R-0.045;
    pause(0.1)
end
end

