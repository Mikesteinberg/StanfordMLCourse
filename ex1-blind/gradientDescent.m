function [theta, J_History] = gradientDescent(X, y, theta, alpha, num_iters)

m = size(X,1);

% initialize the Cost history array
J_History = zeros(num_iters, 1);

% Iterate num_iters times 
for i = 1:num_iters
    
    % Calculate the predicted values
    predictions = X * theta;
    
    % Calculate the errors 
    errors = predictions - y;
    
    % update theta
    theta = theta - (1/m) * alpha * X' * errors;
    
    % calculate the cost and store it in J_history 
    J_History(i) = computeCost(X, y, theta);
    
end
    


end