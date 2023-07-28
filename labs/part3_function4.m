function [num1] = part3_function4(mynum1, mynum2, varargin)
    % this function takes any number of arguments. The first two are dealt
    % with via nargin if missing (as in the previous functions). Then any
    % number of extra arguments are handled by the varargin array and an
    % inputParser object as name-value pairs. There are only two name-value
    % pairs we actually handle. Any others are ignored.
    if nargin < 2
        mynum2 = 1;
    end
    if nargin < 1
        mynum1 = mynum2;
    end
    
    % take some extra name-value pairs:
    p = inputParser;
    p.addParameter('name', 'Unknown caller');
    p.addParameter('repetitions', 1);

    % parse the inputs:
    p.parse(varargin{:});
    
    % do something with the inputs:
    num1 = mynum1 + mynum2;
    
    % the results of the parsing process are in a struct property of the
    % inputParser object, called Results, ready for us to use:
    for i=1:p.Results.repetitions
        fprintf('%s requested the sum of %d and %d, which is %d\n', p.Results.name, mynum1, mynum2, num1);
    end
end