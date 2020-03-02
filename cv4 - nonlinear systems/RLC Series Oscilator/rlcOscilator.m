function dX = rlcOscilator(t,X,f)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
 R = 10;               % Resistance  Ohms..
 L = 100e-3;           % Inductance  H..
 C = 50e-6;            % Capacitor  F
 Umax = 5;             % Amplitude of the voltage source V
 
u = Umax*cos(2*pi*f*t);

A = [-R/L, -1/L; 1/C,0];
B = [1/L; 0];
dX = A*X + B*u;
end

