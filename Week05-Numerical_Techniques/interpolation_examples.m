clc; clear;
%% Linear interpolation & spline interpolation
% For the following data
x = 0:5; y = [15 10 9 6 2 0];

% Find the interpolated value for x = 3.5
y_lin = interp1(x, y, 3.5)
% = 4

% Now, using spline interpolation
new_x = 0:2.5:5;
y_spline = interp1(x, y, new_x, 'spline')
% = 15, 7.8, 0

% See original points and interpolated points (using spline in the same graph)
plot(x, y, new_x, y_spline, '-o')
