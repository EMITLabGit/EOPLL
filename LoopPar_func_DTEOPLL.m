function [wz, wp, k_tot] = LoopPar_func_DTEOPLL(BW, wf, wint, PM) % Finds loop filter zero (wz) and pole (wp) and open-loop gain for the provided loop bandwidth and phase margin

% BW: Loop bandwidth
% wf: Laser FM response cut-off frequency
% wint: Integrator cut-off frequency
% PM: Phase margin in Radian

syms wz0
wp0 = 50*wz0; % Assume wp is 50 times larger than wz
eqn = atan(BW/wz0) - atan(BW/wp0) - atan(BW/wint) - atan(BW/wf) - pi/2 == PM - pi; % Nyquist stability criterion (<OL(jwc) = PM - pi)
wz1 = round(solve(eqn,wz0),3);
wz = wz1(1);
wp = round(50*wz(1),3);
k_tot = (2*pi*BW * sqrt(1 + (BW/wp)^2) * sqrt(1 + (BW/wint)^2) * sqrt(1 + (BW/wf)^2)) / sqrt(1 + (BW/wz)^2); % Finds the required open loop gain from the Nyquist stability criterion (|OL(jwc)| = 1)