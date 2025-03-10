function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
h=X*theta;
a=h-y;
m=length(y);
J=(1/2*m)*sum(a.^2);
disp(J)