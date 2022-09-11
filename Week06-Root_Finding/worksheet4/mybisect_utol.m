## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function [x e nsteps residual] = mybisect_utol (f, a, b, tol)
  % Does the bisection method for a function f repeatedly until tolerance threshold reached

  % Inputs:   f -- a function
  %           a,b -- left and right edges of a interval
  %           tol -- tolerance level for residual

  % Outputs:  x -- the estimated solution of f(x) = 0
  %           e -- an upper bound on the error

  % First, evaluate at the ends and make sure there is a sign change

  c = f(a); d = f(b);

  if c*d > 0.0
    error('Function has same sign at both endpoints.');
  endif

  disp('           x                   y');

  % Start with arbitrary nonzero e value
  e = 10000;

  nsteps = 0;

  while abs(e) > tol && e ~= 0
    % find the middle-point and f(m)
    m = (a + b)/2;
    y = f(m);
    disp([         m                   y]);

    if y == 0.0  % the equation is solved exactly
      a = m;
      b = m;
      break;    % jump out of the for-loop
    endif

    % decide which half to keep, so that the signs at the ends differ
    if c*y < 0
      b = m;
    else
      a = m;
    endif

    % set the best estimate for the error bound
    e = (b-a)/2;

    nsteps = nsteps + 1;
  endwhile

  % set the best estimate for x
  x = (a + b)/2;

  residual = abs(f(x));

endfunction
