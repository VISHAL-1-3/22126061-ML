function [RMSE,MSE,AME, RMLSE, R2, R2adjusted] = Evaluationmatrice(h,y,X)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
m=length(y);
n=size(X,2)-1;
RMSE=sqrt(1/m*sum((h-y).^2));
MSE=(1/m*sum((h-y).^2));
AME=1/m*sum(abs(h-y));
RMLSE=sqrt(1/m*sum(((log(y)+1)-(log(h)+1)).^2));
MSEbase=(1/m*sum(y-mean(y).^2));
R2=1-(MSE/MSEbase);
R2adjusted=1-(1-R2)*(m-1/(m-(n+1)));
end