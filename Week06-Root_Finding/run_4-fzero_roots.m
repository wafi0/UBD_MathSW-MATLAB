## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

clear;

format long;
format compact;

f = @(x) x - 1./e.^x;

fzero(f, [0, 1])  % 0.567143290409785
fzero(f, 1)       % 0.567143290409785
fzero(f, 2)       % 0.567143290409783

% for f = @(x) x.^4 - 5*x.^2 + 4 = 0;
p = [          1  0  -5   0    4];
roots(p) % = [2; -2; -1; 1]
