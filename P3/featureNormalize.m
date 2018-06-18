function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
%% Mean of each column of X
mu= mean(X);            
% We substract the mean of each column by itself
x1_mu = X(:,1) - mu(1); 
x2_mu = X(:,2) - mu(2);
% We calculate the standard deviation of each column with its mean
% substracted
sigma=std([x1_mu, x2_mu]);
% We end the normalization by dividing with the std
X_norm=[x1_mu./sigma(1),x2_mu./sigma(2)] ;

% ============================================================
% The mean is close to 0 and the std is 1
% display(mean(X_norm))
% display(std(X_norm))
% ============================================================
 
end
