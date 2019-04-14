function [C, sigma] = dataset3Params(X, y, Xval, yval)
%   DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%   where you select the optimal (C, sigma) learning parameters to use for SVM
%   with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

C = 1;
sigma = 0.3;


Parameter_values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
optimal_C_and_sigma = [999, 999];
lowest_error = 9999;

% Train the model with X and y, and use Xval and yval (Cross Validation) as the prediction values.

for i = 1:8
  for j = 1:8
    model = svmTrain(X, y, Parameter_values(i), @(x1, x2) gaussianKernel(x1, x2, Parameter_values(j))); 
    predictions = svmPredict(model, Xval);      % m x 1
    
    error = mean(double(predictions ~= yval));

    if (error < lowest_error) 
      lowest_error = error;
      optimal_C_and_sigma(1) = Parameter_values(i);
      optimal_C_and_sigma(2) = Parameter_values(j);
    endif
      
  endfor
endfor


C = optimal_C_and_sigma(1);
sigma = optimal_C_and_sigma(2);


end
