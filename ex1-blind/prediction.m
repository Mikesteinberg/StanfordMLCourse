function pred = prediction(test, theta, mu, sigma)

% Scale the values
scaled = scaleTest(test, mu, sigma);

% Predict using scaled values
pred = scaled * theta;


end
