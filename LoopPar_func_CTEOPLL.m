function [k_tot,PM] = LoopPar_func_CTEOPLL(BW, wf, wint) % Finds the maximum phase margin and open-loop gain for the provided loop bandwidth

% BW: Loop bandwidth
% wf: Laser FM response cut-off frequency
% wint: Integrator cut-off frequency

syms PM0
eqn = 0 - atan(BW/wint) - atan(BW/wf) == PM0 - pi; % Nyquist stability criterion (<OL(jwc) = PM - pi)
PM = round(solve(eqn,PM0),3); 
k_tot = sqrt(1 + (BW/wint)^2) * sqrt(1 + (BW/wf)^2); % Finds the required open loop gain from the Nyquist stability criterion (|OL(jwc)| = 1)