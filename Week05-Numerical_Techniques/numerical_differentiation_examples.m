% On these data points (y = x^2), ...
x = -2:2;          % step-size 1
x_more = -2:0.1:2; % step-size 0.1, for better approximation

y = x.^2;
y_more = x_more.^2;

% ... use numerical differentiation, and compare its results with the exact solution
num_diff_on_quadratic = figure();

dydx_num = diff(y)./diff(x);
dydx_num_more = diff(y_more)./diff(x_more);

dydx_exact = 2*x;
dydx_exact_more = 2*x_more;

% NaN added to the vector to get same length of vectors
dydx = [[dydx_num, NaN]', dydx_exact']
dydx_more = [[dydx_num_more, NaN]', dydx_exact_more']

subplot(1,2,1);
plot(x, [dydx_num, NaN], 'b', x, dydx_exact, 'g');
title('dy(x^2)/dx: With step-size 1');

subplot(1,2,2);
plot(x_more, [dydx_num_more, NaN], 'b', x_more, dydx_exact_more, 'g');
title('dy(x^2)/dx: With step-size 0.1');

% Now, the equation y = x^3 + 2x^2 - x + 3
% Compare the exact values of dy/dx and its numerical approximation
x = -5:5; % step-size 1
y = x.^3 + 2*x.^2 - x + 3;

before_num_diff_on_polynomial = figure();
plot(x, y);
title('y = x^3 + 2x^2 - x + 3');

dydx_approx = diff(y)./(diff(x));
dydx_exact = 3*x.^2 + 4*x -1;
dydx_compare_in_array = [[dydx_approx,NaN]',[dydx_exact]']

after_num_diff_on_polynomial = figure();
plot(x, [dydx_approx,NaN], x, dydx_exact);
title('y = dy(x^3 + 2x^2 - x + 3)/dx');
legend('numerical solution; step-size 1', 'exact solution');
