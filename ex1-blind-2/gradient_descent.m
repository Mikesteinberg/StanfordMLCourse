function [theta, J_History] = gradient_descent(X, y, theta, alpha, num_iters, lam)

% Get the number of training examples
m = size(X, 1);

% Preallocate memory for our J_History
J_History = zeros(1, num_iters);

for i = 1:num_iters
    
    % Make predictions for each training example
    predictions = X * theta';
    
    % Get the error for each training example
    errors = predictions - y;
    
    grad = (1 / m) * (errors' * X) + (lam / m) * theta;
    grad(1) = (1 / m) * (errors' * X(:, 1));
    
    % Update theta 
    theta = theta - alpha * grad;
    
    % Update our J_History
    J_History(i) = cost_function(X, y, theta, lam);
    
end





