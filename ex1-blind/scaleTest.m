function scaled_test = scaleTest(test, mu, sigma)

% Scale all the features
scaled_test = (test - mu) ./ sigma;

% reset the first feature
scaled_test(:, 1) = test(:, 1);

end