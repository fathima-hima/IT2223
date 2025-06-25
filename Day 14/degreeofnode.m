s = [1, 1, 2, 2, 2];
t = [2, 3, 4, 5, 6];

n = max([s t]);
deg = zeros(1, n);

for i = 1:length(s)
    deg(s(i)) = deg(s(i)) + 1;
    deg(t(i)) = deg(t(i)) + 1;
end

for i = 1:n
    fprintf('Node %d: Degree = %d\n', i, deg(i));
end
