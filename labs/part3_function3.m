function [num1] = part3_function3(mynum1, mynum2, varargin)
    % this function takes any number of arguments. The first two are dealt
    % with via nargin if they're missing (as in the previous function).
    % Then any number of extra arguments are handled via the varargin
    % array. Here we don't do anything with them, other than to check how
    % many there are and display a message
    if nargin < 2
        mynum2 = 1;
    end
    if nargin < 1
        mynum1 = mynum2;
    end
    
    fprintf('You called with %d extra arguments, but we''re just ignoring them...\n', length(varargin));
        
    % do something with the inputs:
    num1 = mynum1 + mynum2;
    
end