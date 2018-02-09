function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); 
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    h = X * theta;
    stderr = h - y;
    theta = theta - (alpha/m) * (stderr' * X)';
    J_history(iter) = costfunction(X, y, theta);
end

endfunction
