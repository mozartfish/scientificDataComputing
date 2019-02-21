syms x;

%% The following code serves as a driver for the FirstDer function
% Author: Pranav Rajan
% Date: February 23, 2019

%%  Create an anonymous function for collecting data
f = @(x) x^2;

% Variable to keep track of the total number of points
N = 5;

%% Define a vector that contains a list of N evenly spaced points
input = linspace(-1,1,N)';

%% A vector that stores all the outputs when the anonymous function 
%% evaluates the points in the vector containing the evenly spaced points
output = zeros(N,1);

% populate a vector that stores all corresponding f(x) values for the
% anonymous function
for it = 1:N
    output(it,1) = f(input(it,1));
end

output = FirstDer(input,output);