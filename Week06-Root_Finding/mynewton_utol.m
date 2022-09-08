## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function x = mynewton_utol (f, f1, x0, tol)
  x = x0; y = f(x);
  i = 0;

  while abs(y) > tol && i < 1000
    x = x - y/f1(x);
    y = f(x);
    i = i + 1;
  endwhile

endfunction
