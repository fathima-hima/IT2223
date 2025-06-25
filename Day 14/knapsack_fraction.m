% input
weights = [10, 20, 30];
values = [60, 100, 120];
capacity = 50;

% call the fractional knapsack function
maxProfit = fractionalKnapsack(weights, values, capacity);

% display result
fprintf('Maximum Profit (Fractional Knapsack): %.2f\n', maxProfit);

% function for fractional knapsack
function maxProfit = fractionalKnapsack(weights, values, capacity)
    n = length(weights);
    
    % Calculate value-to-weight ratio
    ratio = values ./ weights;
    
    % Combine into a matrix and sort by ratio descending
    items = [weights' values' ratio'];
    items = sortrows(items, -3); % sort by ratio in descending order
    
    maxProfit = 0;
    remainingCapacity = capacity;
    
    for i = 1:n
        wt = items(i,1);
        val = items(i,2);
        
        if wt <= remainingCapacity
            % Take the whole item
            maxProfit = maxProfit + val;
            remainingCapacity = remainingCapacity - wt;
        else
            % Take fraction of the item
            fraction = remainingCapacity / wt;
            maxProfit = maxProfit + val * fraction;
            break;
        end
    end
end
