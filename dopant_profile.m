x = linspace(10^-5,10^-4, 100);
Q = 1.516*10^(15);
D = 6.6*10^(-15);
t = 1800;

N = (Q/sqrt(pi*D*t))*exp(-(x.^2)/(4*D*t));

figure;
plot(x, N, 'r', 'DisplayName', 'Gaussian Profile Estimate', 'LineWidth', 2);
xlabel('Distance (cm)');
ylabel('Dopant Concentration (cm^-3)');

xlim([10^(-6) 6*10^(-5)])
ylim([1 10^(20)])

set(gca, 'YScale', 'log');
title('Gaussian Profile of Boron Dopant in Si Wafer');
legend;
grid on;

