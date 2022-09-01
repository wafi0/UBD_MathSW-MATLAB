% x^2 from 0 to 1.
% Solve its numeral integral using diff function and trapezoidal rule

x = 0:0.1:1;
func = @(x) x.^2;
y = func(x);
plot(x,y);
title('y = x^2');

% Calculate the Integral (Trapezoid method):
avg_y = y(1:length(x)-1) + diff(y)/2;
A = sum(diff(x).*avg_y)

% Using the in-built function:
A_trapz = trapz(x,y)

% Calculate the Integral (Simpson method):
A_simp = quad('x.^2', 0, 1)

% Calculate the Integral (Lobatto method):
A_lab = quadl(@(x) func(x), 0, 1)
