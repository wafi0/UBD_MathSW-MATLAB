g = @(x) log(x)+x.^2;
x = -1:0.001:1;
figure(1);
plot(x, g(x), [-1 1], [0 0], 'k');
axis([-1 1 -0.3 1]);
title('Finding roots for g(x) = log(x)+x^2');

ans1 = mysecant(g, 0.6, 0.7, 3)
% ans1 = 0.652918640422324
ans2 = mysecant(g, 0.7, 0.65, 3)
% ans2 = 0.652918640419204
ansFinal = mysecant(g, 0.66, 0.65, 3)
% ansFinal = 0.652918640419205

% if using a func file instead of anon func, use "@" e.g. @func_file
