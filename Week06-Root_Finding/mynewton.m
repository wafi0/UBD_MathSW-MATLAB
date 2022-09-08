## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function x = mynewton (f, f1, x0, n)
  % Solves f(x) by doing a steps of Newton's method starting at x0

  % Inputs:
  %     f   - the function
  %     f1  - its derivitive
  %     x0  - starting guess, a number
  %     n   - the number of steps to do
  % Output: x - the approximate solution

  x = x0; % Set x equal to the initial guess x0

  for i = 1:n
    x = x - f(x)/f1(x);  % Newton's formula
  endfor

endfunction
