%% Script for Chevyshev polynomials

clear             % Clear workspace
clc               % Clear command log

% Vector for x coordinates
x = linspace(-1,1,201);

% Vectors for y coordinates
T1 = cos(acos(x));
T3 = cos(3*acos(x));
T5 = cos(5*acos(x));
T7 = cos(7*acos(x));

% Assign y=T1, y=T2, y=T3, y=T4 graphs onto the
% 1st, 2nd, 3rd, 4th plots, respectively,
% of the created 2x2 subplots
subplot(2,2,1), plot(x, T1)
subplot(2,2,2), plot(x, T3)
subplot(2,2,3), plot(x, T5)
subplot(2,2,4), plot(x, T7)