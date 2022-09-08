## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

clear;

format long;
format compact;

fprintf('Using the mynewton function\n\n');

f = @(x) x^3 - 5;
f1 = @(x) 3*x^2;

x1 = mynewton(f, f1, 0.2, 10)   % 1.747020123323698
actual_root = 5^(1/3)           % 1.709975946676697
x1_more_iterations = mynewton(f, f1, 0.2, 14)% same^

% fprintf('\n');

% f = @(x) x^(1/3);
% f1 = @(x) (1/3)*x^(-2/3);
% x3 = mynewton(f, f1, 0.1, 10)

fprintf('\n');

f = @(x) x^2;
f1 = @(x) 2*x;
x2 = mynewton(f, f1, 0.1, 10)
x2_more_iterations = mynewton(f, f1, 0.1, 20)
x2_even_more_iterations = mynewton(f, f1, 0.1, 50) % Approaches 0

fprintf('\nUsing mynewton, w/ warning on not reaching tolerance treshold\n\n');

f = @(x) x^3 - 5;
f1 = @(x) 3*x^2;
tol = 0.01
x1t1 = mynewton_wtol(f, f1, 2, 3, tol)   % Fine
tol = 1e-10
x1t2 = mynewton_wtol(f, f1, 2, 3, tol)  % Get warning

fprintf('\nUsing mynewton, w/ iterate until tolerance treshold reached \n\n');

tol = 1e-10
x1u = mynewton_utol(f, f1, 2, tol)
