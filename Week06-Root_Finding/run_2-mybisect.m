## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

clear;

format long;
format compact;

f = @(x) x^3 - 5;
f1 = @(x) 3*x^2;

[x e] = mybisect(f, 0, 2, 10)
