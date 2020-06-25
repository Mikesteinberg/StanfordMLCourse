function norm_theta = normal_equation(X, y)

norm_theta = (pinv(X' * X) * X' * y)';