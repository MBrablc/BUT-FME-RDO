function [value,isterminal,direction] = fallEvents(t,y)
    value = y(1);     % Detect height = 0
    isterminal = 1;   % Stop the integration
    direction = -1;   % Negative direction only
end