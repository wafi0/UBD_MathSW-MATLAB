clear
clc

% Question 1
Ans1a = ((2-3)-(-3))/((-1)+2)
Ans1b = 3 - (3^2-2.3)/(2.3-2)
Ans1c = sin(sind(65))
Ans1d = exp((10-8.5)/3)

% Question 2
x = [2 3 0 1 4 7]
Ans2a = x + 8
Ans2b = x(1:2:6) + 5
Ans2c = sqrt(x)
Ans2d = x.^2

% Question 3
A = [2 7 9 7; 3 1 5 6; 8 1 2 5]
Ans3a = A'                  % Transpose of A
Ans3b = A(:,[1 4])          % All elements from Cols 1,4 (3x2 MAT)
Ans3c = A([2 3], [3 1])     % Elements from Rows 2,3, Cols 3,1 (2x2 MAT)
Ans3d = reshape(A,2,6)      % Rearranges elements of A into a 2x6 MAT
                            % (going thru one column to another)
Ans3e = A(:)                % Puts all elements in a vertical vector
Ans3f = flipud(A)           % Vertically flip the matrix
Ans3g = fliplr(A)           % Horizontally flip the matrix
Ans3h = [A A(:, end)]       % Concatenation of the last column of the matrix to itself as a new column
Ans3i = A(1:3,:)            % All elements from Rows 1 to 3 (The whole matrix A)
Ans3k = sum(A)              % 1x4 matrix; summation of elements by column
Ans3l = sum(A')             % 1x3 matrix; summation of elements by row
Ans3m = sum(A,2)
Ans3n = [[A;sum(A)] [sum(A,2);sum(A(:))]]   % Concatenation

x = linspace(0,1,101);
y = 5 * cos(3*pi*x);
subplot(3,1,1); plot(x,y)
title("Ans 4a")

x = linspace(-5,5,101);
y = 1./(1+x.^2);
subplot(3,1,2); plot(x,y)
title("Ans 4b")

x = linspace(-pi/2,pi/2,200);
y = (sin(7*x)-sin(5*x))./(cos(7*x)+cos(5*x));
subplot(3,1,3); plot(x,y)
title("Ans 4c");
axis([-2 2 -10 10])

% Question 5
x = linspace(-3,3,101);
y = exp(-(x.^2)/2)/sqrt(2*pi);
figure(); plot(x,y)
title("Gaussian function");
xlabel("x"); ylabel("f(x)");
axis([-3 3 0 0.4])

% Question 6
x = linspace(0,40,101);
y1 = (x/4).*sin(x);
y2 = x/4; y3 = -x/4;
figure(); plot(x,y1,"b","LineWidth",2)
hold on; plot(x,y2,"--r","LineWidth",2)
hold on; plot(x,y3,"--r","LineWidth",2)
legend("y = 0.25*x*sin(x)","y = \pm 0.25*x", "location","northwest")
