function g = sigmoid(Z)
    % sigmoid is 1 / (1 + e^-z)
    g = ones(size(Z)) ./ (1 + exp(-Z));