function [theta, J_History] = gradientDescent(X, y, alpha, theta, num_iters)

m = size(X,1);
J_History = zeros(num_iters, 1);

for i = 1:num_iters
    
    predictions = X * theta;
    
    errors = predictions - y;
    
    theta = theta - alpha * (1 / m) * X' * errors;
    
    
    
    
    J_History(i) = costFunction(X, y, theta);
   
    
end
    
end