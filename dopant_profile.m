x = linspace(10^-5,10^-4, 100);
N0 = 3.9*10^(20);

D = 6.6*10^(-15);
t = 1800;

Q = 2*N0*(sqrt(D*t/pi));

N = (Q/sqrt(pi*D*t))*exp(-(x.^2)/(4*D*t));
N1 = (Q/sqrt(pi*D*t))*exp(-(x.^2)/(4*D*t*2));
N2 = (Q/sqrt(pi*D*t))*exp(-(x.^2)/(4*D*t*3));

figure;
plot(x, N, 'r', 'DisplayName', '30 mins', 'LineWidth', 2);
xlabel('Distance (cm)');
ylabel('Dopant Concentration (cm^-3)');

xlim([10^(-6) 10^(-4)])
ylim([1 10^(20)])

set(gca, 'YScale', 'log');
title('Gaussian Profile of Boron Dopant in Si Wafer');
hold on;
plot(x, N1, 'b', 'DisplayName', '1 hour', 'LineWidth', 2);
hold on;
plot(x, N2, 'g', 'DisplayName', '90 mins', 'LineWidth', 2);
legend;
grid on;

