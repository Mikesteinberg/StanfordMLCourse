function J = cost(X, y, theta)

m = size(y, 1);

h = sigmoid(X * theta');
J = (1 / m) * (-y' * log(h) - (1 - y)' * log(1 - h));