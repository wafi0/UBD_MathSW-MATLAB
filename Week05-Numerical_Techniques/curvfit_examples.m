% For the model
x = 0:5; y = [15, 10, 9, 6, 2, 0];

% Linear regression, i.e., first order polynomial
n = 1;

p = polyfit(x, y, n); % -2.9143 14.2857

a = p(1) % -2.9143
b = p(2) % 14.2857

% plot the first order polynomial a.k.a. line:
ymodel = a*x + b;
plot(x, y, 'o', x, ymodel, 'b-');

figure();

% Now, to compare different orders of polynomial regression models for the same dataset
for n = 2:5
  p = polyfit(x, y, n);
  ymodel = polyval(p, x);
  subplot(2, 2, n-1);
  plot(x, y, 'o', x, ymodel);
  title(sprintf('Model of order %d', n));
  fprintf('\ny_%d(x) = ', n);
  for i = n:-1:0
    fprintf(' %+.2f', p(n-i+1));
    if i > 0
      fprintf('x');
      if i > 1
        fprintf('^%d', i);
      endif
    endif
    fprintf(' ');
  end
end
fprintf('\n');
