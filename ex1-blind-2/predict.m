function prediction = predict(test, theta, mu, sigma)

scaled_test = scale_test(test, mu, sigma);

prediction = scaled_test * theta';

