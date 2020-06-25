function [theta, J_History] = gradient_descent(X, y, theta, alpha, num_iters)

m = size(y, 1);

J_History = zeros(1, num_iters);

for i = 1:num_iters
    
    gradient = (1 / m) * X' * (sigmoid(X * theta') - y);
    
    theta = theta - gradient' * alpha;
    
    J_History(i) = cost(X, y, theta);
    
end



