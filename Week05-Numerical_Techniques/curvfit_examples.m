clc; clear;
% For the model
x = 0:5; y = [15, 10, 9, 6, 2, 0];

% Linear regression, i.e., first order polynomial
n = 1;

p = polyfit(x, y, n); % -2.9143 14.2857

a = p(1) % -2.9143
b = p(2) % 14.2857

% plot the first order polynomial a.k.a. line:
ymodel = a*x + b;
lin_regression = figure();
plot(x, y, 'o', x, ymodel, 'b-');
title('Model of order 1');
legend('Actual data');

% Now, to compare different orders of polynomial regression models for the same dataset
poly_regression = figure();
for n = 2:5
  p = polyfit(x, y, n);
  ymodel = polyval(p, x);
  subplot(2, 2, n-1);
  plot(x, y, 'o', x, ymodel);
  title(sprintf('Model of order %d', n));
  legend('Actual data');

  % Print the resulting regression models (refer to README)
  fprintf('\ny_%d(x) = %.2fx^%d', n, p(1), n);
  for i = (n-1):-1:0
    fprintf(' %+.2f', p(n-i+1));
    if i > 0
      fprintf('x');
      if i > 1
        fprintf('^%d', i);
      end
    end
    fprintf(' ');
  end
end
fprintf('\n');
