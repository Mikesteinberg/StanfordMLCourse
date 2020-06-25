function J = cost_function(X, y, theta, lam)

% Get the number of training examples
m = size(X, 1);

% Make a prediction for each training example
predictions = X * theta';

% Calculate the sqr error for each training example
sqr_errors = (y - predictions) .^ 2;

% Calculate the cost
J = (1 / (2 * m)) * (sum(sqr_errors) + lam * sum(theta(2:end) .^ 2));
