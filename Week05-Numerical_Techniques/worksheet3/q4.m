clear; clc;

% Consider the equation below
func = @(x) x.^3 + 2*x.^2 - x + 3;

% Exact integral (7.3333):
a = -1; b = 1;
exact = 1/4*(b^4-a^4) + 2/3*(b^3-a^3) - 1/2*(b^2-a^2) + 3*(b-a)

% Calculate the Integral using diff, i.e. manual Trapezoid method):
avg_y = y(1:length(x)-1) + diff(y)/2;
A = sum(diff(x).*avg_y) % 7.34

% Using in-built trapz function:
A_trapz = trapz(x,y)    % 7.34

% Using Simpson method:
A_quad = quad('x.^3 + 2*x.^2 - x + 3', -1, 1) % 7.3333

% Using Lobatto method:
A_quadl = quadl(func, -1, 1)                % 7.3333

% Using integral()
A_int = integral(func, -1, 1)               % 7.3333

p = [1 2 -1 3];
polyint(p) % coefficients of the polynomial
% 0.2500 0.6667 -0.5000 3.0000 0
