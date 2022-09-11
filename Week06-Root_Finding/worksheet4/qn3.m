% Computes a geometric series until it seems to converge
format long
format compact

r = 0.5;
Snew = 0; % start sum at 0
Sold = -1; % set Sold to trick while the first time

i = 0; % count iterations
while Snew > Sold % is the sum still changing?
  Sold = Snew;    % save previous value to compare to
  Snew = Snew + r^i;
  i=i+1;
endwhile

Snew % prints the final value
i % prints the number of iteratinos.
Sexact = 1/(1-r')
relativeError = Snew - Sexact

% Now for the r-values in this row vector
rvals = [0.9 0.99 0.999 0.9999 0.99999 0.999999];

fprintf('r           i        rel_error\n');

for j = 1:length(rvals)
  Snew = 0; % start sum at 0
  Sold = -1; % set Sold to trick while the first time
  i = 0; % count iterations
  while Snew > Sold % is the sum still changing?
    Sold = Snew;    % save previous value to compare to
    Snew = Snew + rvals(j)^i;
    i=i+1;
  endwhile
  Snew
  fprintf('%.6f    %d      ', rvals(j), i); r_e = Snew - 1/(1-rvals(j)')
endfor

% r           Snew                i            rel_error
% 0.900000    10                  330          -1.776356839400250e-15
% 0.990000    99.99999999999916   3243         -7.531752999057062e-13
% 0.999000    999.9999999999600   30485        -3.910827217623591e-11
% 0.999900    9999.999999996184   277247       -4.916728357784450e-09
% 0.999990    100000.0000000014   2564633      -4.537287168204784e-07
% 0.999999    999999.9999300913   23566994     -4.115304909646511e-05
