function [value,isterminal,direction] = bounceEvents(t,y)
    value = y(3);     % Detect height = 0
    isterminal = 1;   % Stop the integration
    direction = -1;   % Negative direction only
end