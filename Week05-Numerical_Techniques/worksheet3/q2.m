clear; clc;
% Use polyfit and polyval and compare the models using different order of the polynomial

x = 10:10:100;
y = [23 45 60 82 111 140 167 198 200 220];

fig_wqn2 = figure(2);

for n = 2:7
  % Plot each model
  p = polyfit(x, y, n);
  ymodel = polyval(p, x);
  subplot(2, 3, n-1);
  plot(x, y, 'o', x, ymodel);
  xlabel('x');
  ylabel('y');
  title(sprintf('Model of order %d', n));
  legend('Actual data');
end
