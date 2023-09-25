open_system('C:\Users\Marziyeh Rezaei\Desktop\LiDAR\Paper\Modeling an Electro-Optical Synthesizer Generating\Simulink\CT_EOPLL');

% System parameters

K_loop = 3.33e-3; % Additional gain to maintain stability
K_int = 10; % Integrator gain
Kf = 1e13; % Laser current-to-frequency conversion gain
R = 1; % Balanced photodetector responsivity

w_int = 2*pi*300; % Integrator cut-off frequency
wf = 2*pi*1e7; % Laser frequency modulation speed cut-off frequency
w_ref = 2*pi*2e5;

f0 = 5e9; % Laser center frequency
p0 = 1; % Laser power
h0 = 1e4; % White noise power representing laser phase noise

t_mzi = 2e-9; % MZI delay
T_meas = 2e-4; % Measurement clock period

sim('CT_EOPLL');