clear all
close all
clc

%%  Parameters

R = 1; % Ohms
C = 100e-5; % Farad
U = 1;

tau = R*C;
fm = 1/(2*pi*tau);

% f_range = [fm*1e-3,fm*1e-2,fm*1e-1,fm,fm*1e1,fm*1e2,fm*1e3];
% f_range = [linspace(fm*1e-3,fm,10) linspace(fm,fm*10,10) linspace(fm*10,fm*1e2,10)];
f_range = fm*logspace(-2,2,15);

N = length(f_range);

%%


for i = 1:N
    f = f_range(i);
    T = 1/f;
    
    out = sim('RC_Circuit2',20*T);
    
    t = out.Voltage.time';
    V_out = out.Voltage.signals.values';
    
    %% Amplitude
    L = length(V_out);
    AmpV_out(i) = max(abs(V_out(round(0.9*L):end)));
    
    disp(i/N)
end

%% Displaying the Results

% load detail_data.mat

plot(f_range,AmpV_out)
xlabel('Frequency [Hz]')
ylabel('Magnitude [-]')
title('Frequency Response')
grid on

%%

figure
semilogx(f_range,AmpV_out)
hold on
semilogx(f_range,AmpV_out,'rx')
xlabel('Frequency [Hz]')
ylabel('Amplytude [-]')
title('Frequency Response in Logaritmic scaling')
grid on


%%
K = 20*log10(AmpV_out);

figure
semilogx(f_range,K)
hold on
semilogx(f_range,K,'rx')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
title('Frequency Response in Logaritmic scaling')
grid on

semilogx([fm fm],[1 K(end)*1.1],'g--')
semilogx([f_range(1) f_range(end)],[-3.01 -3.01],'g--')

