clc; clear;
% Given the following model
height = [0, 1.7, 1.95, 2.6, 2.92, 4.04, 5.24];
flow = [0, 2.6, 3.6, 4.03, 6.45, 11.22, 30.61];

% Create polynomial regression models of the following order
% linear (order 1)
% quadratic (order 2)
% cubic (order 3)

line_model = polyfit(height, flow, 1);
quad_model = polyfit(height, flow, 2);
cube_model = polyfit(height, flow, 3);

new_height = 0:0.5:5.5; % new coords independent, uniformly distributed in independent (x) axis

new_line_flow = polyval(line_model, new_height);
new_quad_flow = polyval(quad_model, new_height);
new_cube_flow = polyval(cube_model, new_height);

% Plot the original data together with the models found for comparison
model_fitting = figure();
plot(
  height, flow, 'bo',
  new_height, new_line_flow,
  new_height, new_quad_flow,
  new_height, new_cube_flow
);
title('Model fitting');
xlabel('height');
ylabel('flow');
legend('real data', 'linear model', 'quadratic model', 'cubic model');
