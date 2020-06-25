function scaled_test = scale_test(test, mu, sigma)

scaled_test = test;

scaled_test(:, 2:end) = (test(:, 2:end) - mu) ./ sigma;