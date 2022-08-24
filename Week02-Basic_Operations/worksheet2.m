%% Worsheet 1
% Question 1
A = [1 2; 3 0]; B = [1 7; 0 9];
Ans1a = A == B % [1 0; 0 0]
Ans1b = A < B % [0 1; 0 1]
Ans1c = A & B % [1 1; 0 0]
Ans1d = A | B % [1 1; 1 1]
Ans1e = A ~= B % [0 1; 1 1]
Ans1f = A <= B % [1 1; 0 1]

% Question 2
M = 4; N = 2;
Arr2 = rand(M, N)

ilesser = Arr2 < 0.5;
igreater = Arr2 >= 0.5;

Arr2(ilesser) = 0
Arr2(igreater) = 1

% Question 3

Fib_ratios = zeros(1,50);
for n = 2:50
    fprintf('n = %d; Fn/F(n-1) = %.16f\n', n, fibonacci_function(n) / fibonacci_function(n-1))
end
fprintf('    (1+sqrt(5))/2 = %.16f\n', ((1+sqrt(5))/2));

% Question 4
N = 14
List4 = round(rand(1,N)*100)

for i = 2:N
    v = List4(i);
    index = i;
    while index > 1 & List4(index-1) > v
        List4(index) = List4(index - 1);
        index = index - 1;
    end
    List4(index) = v;
end
List4

% Question 5
zeller_function(08 02 2022) % should return "Tue"