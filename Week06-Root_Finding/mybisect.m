## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

function [x e] = mybisect (f, a, b, n)
  % Does n iterations of the bisection method for a function f

  % Inputs:   f -- a function
  %           a,b -- left and right edges of a interval
  %           n -- the number of bisections to do

  % Outputs:  x -- the estimated solution of f(x) = 0
  %           e -- an upper bound on the error

  % First, evaluate at the ends and make sure there is a sign change

  c = f(a); d = f(b);

  if c*d > 0.0
    error('Function has same sign at both endpoints.');
  endif

  disp('           x                   y');

  for i = 1:n

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

  endfor

  % set the best estimate for x and the error bound
  x = (a + b)/2;
  e = (b-a)/2;

endfunction
