%% Script for Sin and Cosine plots

clear             % Clear workspace
clc               % Clear command log

x = 0:pi/100:4*pi;  % Vector for x coordinates
y = sin(x);         % Vector for sin x
y2 = cos(x);        % Vector for cos x

plot(x,y, "k")                  % "k" corresponds to black line
hold on                         % plot the next curve on the same graph
plot(x,y2,"--r","LineWidth",2)  % "--r" corresponds to dashed red line; width of 2

xlabel("x")          % add axis label
ylabel("y")          % add axis label
axis([0 4*pi -1 1]) % set coordinate range

title("Plot of sin and cosine functions", "FontSize", 12)
legend("sin(x)","cos(x)")
