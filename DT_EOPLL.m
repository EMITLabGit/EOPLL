open_system('C:\Users\Marziyeh Rezaei\Desktop\LiDAR\Paper\Modeling an Electro-Optical Synthesizer Generating\Simulink\DT_EOPLL');

% System parameters

K_loop = 10; % Additional gain to maintain stability
K_int = 10; % Integrator gain
Kf = 1e13; % Laser current-to-frequency conversion gain
R = 1; % Balanced photodetector responsivity

w_int = 2*pi*300; % Integrator cut-off frequency
wf = 2*pi*1e7; % Laser frequency modulation speed cut-off frequency
wz = 2*pi*100.4e3; % Loop filter zero

f0 = 5e10; % Laser center frequency
p0 = 1; % Laser power
h0 = 1e4; % White noise power representing laser phase noise

i_out = 1; % Charge Pump output current
vth = 0.5; % Charge Pump threshold voltage

t_mzi = 20e-9; % MZI delay
T_meas = 2e-4; % Measurement clock period
t_pfd = 1e-9; % PFD delay 
T_ref = 5e-7; % Reference clock period

sim('DT_EOPLL');