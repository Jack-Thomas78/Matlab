classdef my_ClassificationKNN < handle
        
    properties
        
        % Note: we stick with the Matlab naming conventions from fitcknn
        
        X % training examples
        Y % training labels
        NumNeighbors % number of nearest neighbours to consider
        
        Verbose % are we printing out debug as we go?
    end
    
    methods
        
        % constructor: implementing the fitting phase
        
        function obj = my_ClassificationKNN(X, Y, NumNeighbors, Verbose)
            
            % set up our training data:
            obj.X = X;
            obj.Y = Y;
            % store the number of nearest neighbours we're using:
            obj.NumNeighbors = NumNeighbors;
            
            % are we printing out debug as we go?:
            obj.Verbose = Verbose;
        end
        
        % the prediction phase:
        
        function predictions = predict(obj, test_examples)
            
            % get ready to store our predicted class labels:
            predictions = categorical;
            
            for i = 1:1:size(test_examples)
                %ind = knnsearch(obj.X, test_examples(i,:), 'K', obj.NumNeighbors );
                %predictions(i,:) = mode(obj.Y(ind)); 
                
                dist_X = [size(obj.X)];
                temp = [obj.NumNeighbors];

                for j = 1:1:size(obj.X)
                    m = 0;

                    for n = 1:1:2
                        m = m + ((obj.X(j,n)-test_examples(i,n))^2);
                    end

                    dist_X(j) = sqrt(m);

                end

                if obj.NumNeighbors == 1
                    [~ , I ] =  min(dist_X);
                    predictions(i,1) = obj.Y(I);
                else

                    s_dist = sort(dist_X);

                    for k = 1:1:obj.NumNeighbors

                        for l = 1:1:size(obj.X)

                            if s_dist(k) == dist_X(l)
                                temp(k) = l;
                            end
                        end
                    end
                    
                    predictions(i,1) = mode(obj.Y(temp));

                end
            end
        end        
    end
end

