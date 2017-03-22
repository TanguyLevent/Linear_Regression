function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    
    H = X * theta;

    theta(1) = theta(1) - (alpha / m) * sum ((H - y).* X(:,1)); 
    theta(2) = theta(2) - (alpha / m) * sum ((H - y).* X(:,2));
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
