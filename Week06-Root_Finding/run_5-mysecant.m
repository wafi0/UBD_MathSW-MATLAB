## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

clear;

format long;
format compact;

f = @(x) x - 1./e.^x;

x = mysecant(f, 0, 1, 10)   % NaN
x = mysecant(f, 0, 0.6, 10) % NaN
x = mysecant(f, 0, 0.6, 3)  % 0.567143304570941
x = mysecant(f, 0, 1, 3)    % 0.567170358419745
