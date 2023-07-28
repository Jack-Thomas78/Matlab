function [num1] = part3_function2(mynum1, mynum2)
    % this function takes two arguments, but you can call any Matlab
    % function with too few arguments and it will still run. If you handle
    % this possibility with the code at the start of your function then
    % it's possible to achieve a simple form of function overloading
    
    % here we use the nargin keyword to find out how many arguments have
    % been passed in, and set the second argument to a default value if
    % it's missing
    if nargin < 2
        mynum2 = 1;
    end
    
    % do something with the inputs:
    num1 = mynum1 + mynum2;
    
end