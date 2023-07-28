classdef Part3_class < handle

    % class properties:
    properties
        mynum1;
        mynum2;
    end
    
    % class methods:
    methods
        function obj = Part3_class(mynum1, mynum2)
            % object constructor:
            obj.mynum1 = mynum1;
            obj.mynum2 = mynum2;
        end
        
        function num1 = getSum(obj)
            % return the sum of the mynum1 and mynum2 properties:
            num1 = obj.mynum1 + obj.mynum2;
        end
        
        function num1 = getSumPower(obj, pow)
            % return the sum of the mynum1 and mynum2 properties to the
            % power of pow:
            num1 = (obj.mynum1 + obj.mynum2) ^ pow;
        end
        
    end
end

