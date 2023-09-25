function [] = BodePlot_func_DTEOPLL(wz,wp,wf,wint,k) % Plots the bode plot of a DT-EOPLL

% wz: Loop filter zero
% wp: Loop filter pole
% wf: Laser FM response cut-off frequency
% wint: Integrator cut-off frequency
% k: Total loop gain

s = tf('s');
H = k * ((s/wz) + 1)/(s * ((s/wp) + 1) * ((s/wf) + 1) * ((s/wint) + 1));
bode(H ,{1,1e9})
grid on
