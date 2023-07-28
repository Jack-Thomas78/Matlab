% Description: generate a 2D visualisation of the abstraction produced by a
% classifier
%
% Inputs: 
% m: a classifier
% 
% Outputs:
% None
% 
% Notes: 
% You can just assume for now that the classifier has been trained on only
% two predictive features. We'll return to relax this assumption later on.
%
function visualise_abstraction(m)

    figure; % open a new figure window, ready for plotting
    
    % add your code on the lines below...
    [Xs , Ys] = meshgrid(min(m.X(:,1)):(max(m.X(:,1))-min(m.X(:,1)))/100:max(m.X(:,1)), min(m.X(:,2)):(max(m.X(:,1))-min(m.X(:,2)))/100:max(m.X(:,2)));
    grid_examples = [Xs(1:1:end)' Ys(1:1:end)'];

    dots = predict(m,grid_examples);


    gscatter(grid_examples(:,1),grid_examples(:,2),dots);
    
end
