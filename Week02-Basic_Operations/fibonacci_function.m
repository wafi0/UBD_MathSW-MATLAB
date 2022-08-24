function [F, fib] = fibonacci_function(N)

n = N+1;    % include F_0

fib = zeros(1,n);   % fib = [F0 F1 F2 F3 ... FN]
fib(1) = 1;
fib(2) = 1;

for k = 3:n
    fib(k) = fib(k-2) + fib(k-1);
end

% fprintf('Sequence:');
% fprintf(' %i,', fib);
F = fib(end);