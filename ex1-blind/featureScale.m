function [X_norm, mu, sigma] = featureScale(X)

% m is number of training examples. We calculate it here
m = size(X,1);

% get the mean for each feature 
mu = mean(X);

% get the standard deviation for each feature
sigma = std(X);

% Normalize each feature
X_norm = (X - mu) ./ sigma;

% Reset the first column
X_norm(:,1) = (ones(m, 1));







end