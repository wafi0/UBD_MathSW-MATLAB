## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function [a, b] = myrootfind (f, a0, b0)
  % Looks for subintervals where the function change sign

  % Inputs: f -- a function
  %         a0 -- the left edge of the domain
  %         b0 -- the right edge of the domain

  % Outputs: a -- an array, giving the left edges of the
  %                 subintervals
  %          b -- an array, giving the right edges of the
  %                 subintervals

  n = 1001; % number of test points to use
  a = [];   % start empty arrays
  b = [];

  % split the interval into n-1 intervals and evaluate at the break points
  x = linspace(a0, b0, n);
  y = f(x);

  % loop through the intervals
  for i = 1:(n-1)
    if y(i)*y(i+1) <= 0 % The sign changed
      a = [a x(i)];     %   so record it
      b = [b x(i+1)];
    endif
  endfor
  if size(a, 1) == 0
    warning('no roots were found');
  endif
endfunction
