function one_vs_all_y = one_vs_all(y, K)

m = size(y, 1);
one_vs_all_y = zeros(m, K);

for i = 1:m
    temp = zeros(1, K);
    temp(:, y(i)) = 1;
    one_vs_all_y(i, :) = temp;
end

