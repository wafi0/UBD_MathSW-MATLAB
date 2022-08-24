function dayname = zeller_function(date)

daynames = {'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'}';

if length(date) ~= 3
    error("Invalid date")
end

d = date(1)

m = mod(date(2)+10,12)

if m == 0
    m = 12
end

% original m+10 : 11 12 13 14 15 16 17 18 19 20 21 22
% m+10 modulo 12: 11  0  1  2  3  4  5  6  7  8  9 10
% if sub 0 /w 12: 11 12  1  2  3  4  5  6  7  8  9 10
% because february should be 12

date(3) = date(3) - floor(m/11);

c = floor(date(3) / 100)
y = mod(date(3),100)


h = floor(2.6*m-0.2) + d + y + floor(y/4) + floor(c/4) - 2*c;
f = 1 + mod(h,7);

dayname = daynames{f};