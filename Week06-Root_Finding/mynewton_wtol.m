## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function x = mynewton_wtol (f, f1, x0, n, tol)
  % New inputs:
  %     tol - desired tolerance, prints warning if |f(x)| > tol

  x = x0;

  for i = 1:n
    x = x - f(x)/f1(x);  % Newton's formula
  endfor

  r = abs(f(x))

  if r > tol
    warning('The desired accuracy was not attained')
  endif

endfunction
