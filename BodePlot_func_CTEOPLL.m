function [] = BodePlot_func_CTEOPLL(wf,wint,k) % Plots the bode plot of a CT-EOPLL

% wf: Laser FM response cut-off frequency
% wint: Integrator cut-off frequency
% k: Total loop gain

s = tf('s');
OL = k/(((s/wint) + 1)*(((s/wf) + 1))); % Open-loop transfer function
figure
bode(OL ,{1,1e9})
grid on
