function [X_norm, mu, sigma] = featureNormalize(X)

mu = mean(X);
sigma = std(X);
X_norm = (X - mu) ./ sigma;
X_norm(:,1) = (ones(size(X,1),1));