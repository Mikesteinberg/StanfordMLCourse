function J = computeCost(X, y, theta)

m = size(X,1);

predictions = X * theta;

SqrErrors = (predictions - y) .^ 2;

J = (1 / (2 * m)) * sum(SqrErrors);




end