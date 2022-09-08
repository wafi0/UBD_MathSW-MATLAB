## Author: Wafi <Wafi@DESKTOP-GN3SUD0>
## Created: 2022-09-08

clear; % For some reason workspace need to be cleared for fzero to work

format long;
format compact;

f = @(x) sin(x) - 2*x.^2 + 0.5;
x = -1:.01:1; y = f(x);

plot(x, y, 'b', x, zeros(length(x)), 'k'); % see that there are two roots

[a, b] = myrootfind(f, -1, 1) % observe that it finds intervals of the two roots
% a is [-0.4400,   0.8940]
% b is [-0.4380,   0.8960]
