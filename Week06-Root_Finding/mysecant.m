## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function x = mysecant (f, x0, x1, n)
  % Solves f(x) = 0 by doing n steps of the secant method
  % starting with x0 and x1.

  % Inputs: f -- the function
  %         x0 -- starting guess, a number
  %         x1 -- second starting guess
  %         n -- the number of steps to do

  % Output: x -- the approximate solution

  y0 = f(x0); y1 = f(x1);

  for i = 1:n
    x = x1 - (x1-x0)*y1/(y1-y0); % secant formula
    y = f(x); % y value at the new approximate solution

    % Update numbers to get ready for the next step
    x0 = x1; y0 = y1;
    x1 = x; y1 = y;
  endfor

endfunction
