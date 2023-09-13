yDT  = [2.5e4 3.8e4 5e4 7e4 2e5 2e5]/1e3;
yCT  = [5.84e4 8.73e4 11.6e4 17.3e4 2e5 2e5]/1e3;
x  = [1e5 1.5e5 2e5 3e5 1e6 1.5e6]/1e6;

figure
plot(x,yDT)
xlim([0.8e-1 1.5]);
ylim([0 250]);
hold on
plot(x,yCT)
xlim([0.8e-1 1.5]);
ylim([0 250]);