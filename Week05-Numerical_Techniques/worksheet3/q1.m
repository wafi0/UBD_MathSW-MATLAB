clear; clc;
% Energy (kJ/kg) against temperature (deg C)

u = [2506.7 2582.8 2658.1 2733.7 2810.4 2967.9 3131.6];
T = [100 150 200 250 300 400 500];

% Find the interpolated value at u = 2680.78

new_u_pt = 2680.78;
new_T_pt = interp1(u, T, new_u_pt); % T = 215 degrees celcius

fig_wqn1 = figure(1);
subplot(2,2,1);
plot(
  u, T, 'o',
  new_u_pt, new_T_pt, 'o'
);
xlabel('Energy, u (kJ/kg)');
ylabel('Temperature, T(deg C)');
title('Energy u against Temperature T; Interp by linear');
legend('Actual data', 'Interpolated data');

% Spline interpolation

u_spline = linspace(2506.7, 3131.6, 3);
T_spline = interp1 (u , T , u_spline, 'spline');

subplot(2,2,2);
plot(u, T, 'o',
  u_spline, T_spline, 'o-'
);
xlabel('Energy, u (kJ/kg)');
ylabel('Temperature, T(deg C)');
title('Energy u against Temperature T; Interp by spline');
legend('Actual data', 'Interpolated data (spline)');

% Cubic interpolation

u_cubic = linspace(2506.7, 3131.6, 30);
T_cubic = interp1 (u , T , u_cubic, 'cubic');

subplot(2,2,3);
plot(
  u, T, 'o',
  u_cubic, T_cubic
);
xlabel('Energy, u (kJ/kg)');
ylabel('Temperature, T(deg C)');
title('Energy u against Temperature T; Interp by cubic');
legend('Actual data', 'Interpolated data (cubic)');

% Linear regression

p = polyfit(u, T, 1);
a = p(1) % 0.6415
b = p(2) % -1505.7

x = linspace(2506.7, 3131.6, 30);
new_model = a*x + b;

subplot(2,2,4);

plot(
  u, T, 'o',
  x, new_model
);
xlabel('Energy, u (kJ/kg)');
ylabel('Temperature, T(deg C)');
title('Energy u against Temperature T; Linear regression');
legend('Actual data', 'Model by linear regression');

