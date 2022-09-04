clear; clc;
% Use polyder(a,b) function in MATLAB to find the derivitive of the product of polynomials in p(x)

func = @(x) (3*x.^2 + 6*x + 9).*(x.^2 + 2*x);

x = -20:0.1:20;
p = func(x);

fig_wqn3 = figure(3);
subplot(2,2,1:2);
plot(x,p);
xlabel('x');
ylabel('y');
title('Original equation');

% Using polyder(a,b);
a = [3 6 9]; % coefficients of the first polynomial
b = [2 1 0]; % coefficients of the second polynomial
dydx_polyder = polyder(a, b);
dydx = polyval(dydx_polyder, x);
subplot(2,2,3);
plot(x, dydx);
xlabel('x');
ylabel('y');
title('Dydx using polyder(a,b)');

% Using p = conv(a,b), then polyder(p)
dydx_conv = conv(a,b); % results in coefficients of p(a) * p(b)
dydx_polyder = polyder(dydx_conv);
dydx = polyval(dydx_polyder, x);
subplot(2,2,4);
plot(x, dydx);
xlabel('x');
ylabel('y');
title('Dydx using p = conv(a,b); polyder(p)');
