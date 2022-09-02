% x^2 from x = 0 to 1,
% solve its numeral integral using diff function and trapezoidal rule

x = 0:0.1:1;
func = @(x) x.^2;
y = func(x);
plot(x,y);
title('y = x^2');

% Calculate the Integral using Trapezoid method:

% Note(1/2):
%   - y(1:length(x)-1) is just the height of each rectangle, i.e.,
%     the y value at each (except for the last) point n
%   - diff(y)/2 is the "height/2" of each triangle, i.e.,
%     (('n+1'th y value)-(nth y value))/2
avg_y = y(1:length(x)-1) + diff(y)/2;

% Note(2/2):
%   - with diff(x) being the width of each rectangle and triangle, i.e.,
%     'n+1'th x value - nth x value
A = sum(diff(x).*avg_y)

% Using the in-built function:
A_trapz = trapz(x,y)

% Using the Simpson method:
A_simp = quad('x.^2', 0, 1)

% Using the Lobatto method:
A_lab = quadl(@(x) func(x), 0, 1)
