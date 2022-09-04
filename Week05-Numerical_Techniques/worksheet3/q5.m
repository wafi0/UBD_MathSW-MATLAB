clear; format long; clc;

t = 0:0.1:3*pi;

fig_wqn5 = figure(5);
plot3(sin(2*t),cos(t),t);
title('Plot of the curve x(t)=sin(2t), y(t)=cos(t), z(t) = t');
xlabel=('x');
ylabel=('y');
zlabel=('z');

hcurve = inline('sqrt(4*cos(2*t).^2 + sin(t).^2 + 1)');

len1 = quad(hcurve, 0, 3*pi) % 17.22203218655287
len2 = quadl(hcurve, 0, 3*pi) % 17.22203218120643

format short;
