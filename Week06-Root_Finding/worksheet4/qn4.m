f = @(x) 2*x.^3 + 3*x - 1;

% using mybisect; solve until error is bounded by the given tolerance 10^-8
[x, err_bound, nsteps, residual] = mybisect_utol(f, 0, 1, 1e-8);

fprintf('Final values:\n');
x
err_bound
nsteps
residual

% Final values:
% x = 0.312908403575420
% err_bound = 7.450580596923828e-09
% nsteps = 26
% residual = 2.117975206328282e-08
