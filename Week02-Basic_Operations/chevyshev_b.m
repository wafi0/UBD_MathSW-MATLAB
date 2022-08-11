%% Script for Chevyshev polynomials

clear             % Clear workspace
clc               % Clear command log

x = linspace(-1,1,201);

T1 = cos(acos(x));
T3 = cos(3*acos(x));
T5 = cos(5*acos(x));
T7 = cos(7*acos(x));

% Plot y=T1, y=T2, y=T3, y=T4 onto the
% single shared graph
subplot(1,1,1)
plot(x, T1, "b")
hold on
plot(x, T3, "r")
plot(x, T5, "g")
plot(x, T7, "c")

xlabel("x")        % add axis label
ylabel("Tj")       % add axis label
axis([-1 1, -1 1]) % set coordinate range

title("Plot of Chevyshev polynomials Tj (j=1,3,5,7)", "FontSize", 12)
legend("j=1","j=2","j=3","j=4")
