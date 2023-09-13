y  = [2.5e4 3.8e4 5e4 7e4 2e5 2e5]/1e5;
y1 = [4.15e-3 2e-3 1.5e-3 9.2e-6 2.5e-6 2e-6]/1e-3;
x  = [1e5 1.5e5 2e5 3e5 1e6 1.5e6];

figure
plot(x,y1)
xlim([0.8e5 1.5e6]);
ylim([-0.5 4.5]);
hold on
yyaxis right
plot(x,y)
xlim([0.8e5 1.5e6]);
ylim([0 2.5]);
