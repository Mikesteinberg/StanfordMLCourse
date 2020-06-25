% Load the data in from a CSV
data = load("ex1data2.txt");

% The inputs are all the rows and all the columns but the last. The Outputs
% are all the rows and only the last column.
X = data(:,1:end-1);
y = data(:,end);

% Add a row of ones to the input matrix
X = [ones(size(X,1), 1) X];

% initialize the theta values
theta = zeros(size(X,2), 1);

% Scale the theta values
[X_norm, mu, sigma] = featureScale(X);

disp(newline)

% Compute the initial cost
disp("Initial Cost before training: " + computeCost(X_norm, y, theta));

disp(newline)

% Compute the calculated thetas
disp("Theta's Calculated from training")

format longG

% Learning rate
alpha = 0.03;

% Gradient descent iterations
num_iters = 1500;

% Run Gradient descent to get our optimal theta values
[theta, J_History] = gradientDescent(X_norm, y, theta, alpha, num_iters);

disp(theta);

plot(J_History);

test = [1, 1650, 3];

% Use our theta to get a predicted housing price
pred = prediction(test, theta, mu, sigma);

disp("Prediction for a House with 1650 square feet and one window"...
+ " using gradient descent: " + pred);

% Calculate theta via normal Equation
norm_theta = normalEquation(X, y);

% Calculate predicted housing price
norm_pred = test * norm_theta;

% Display housing price predicted with normal equation so we can check if 
% it is identical
disp("Prediction for a House with 1650 square feet and one window"...
+ " using normal equation: " + norm_pred);



