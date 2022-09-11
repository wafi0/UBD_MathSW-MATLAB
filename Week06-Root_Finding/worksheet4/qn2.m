format long;

f = @(x) x.^5 - 7;
f1 = @(x) 5*x.^4;

% Testing by trial and error to find the smallest value of n needed
%   for the program to converge
mynewton(f, f1, 2, 5)           % Not yet 1.475773161745996
progAns = mynewton(f, f1, 2, 6) % Foundit 1.475773161594552
mynewton(f, f1, 2, 7)           %    Also 1.475773161594552
exactAns = 7^(1/5)              % Exactly 1.475773161594552

% Compute error (closeness of the approximation to the exact value)
progAns - exactAns % 0, therefore exactly solved

% Compute residual (closeness of y = f(x) to 0)
residual = abs(f(pgAns)) % = 1.776356839400250e-15
