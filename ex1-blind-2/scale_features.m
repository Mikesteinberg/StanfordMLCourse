function [X_norm, mu, sigma] = scale_features(X)

% Create a copy of X
X_norm = X;

% Get the mean for all the columns except the first
mu = mean(X(:, 2:end));

% Get the standard deviation for all the columns except the first
sigma = std(X(:, 2:end));

% Update the second two columns
X_norm(:, 2:end) = (X(:, 2:end) - mu) ./ sigma;




    