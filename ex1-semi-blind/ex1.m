data = load("ex1data2.txt");
X = data(:,1:end-1);
y = data(:,end);
X = [(ones(size(X,1), 1)) X];
theta = zeros(size(X,2), 1);

[X_norm, mu, sigma] = featureNormalize(X);

disp("Cost Before Training: " + costFunction(X_norm, y, theta));

alpha = 0.03;

num_iters = 1500;

[theta, J_History] = gradientDescent(X_norm, y, alpha, theta, num_iters);

plot(J_History)

disp("Theta computed by gradient descent: " + theta(:));

disp("Final Cost: " + J_History(end))


