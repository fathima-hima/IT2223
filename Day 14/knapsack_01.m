%input
weights=[10, 20, 30];
values=[60, 100, 120];
capacity=50;

%call the knapsack function
maxProfit=knapsack01(weights,values,capacity);

%display results
fprintf('Maximum Profit (0/1 Knapsack) : %2f\n',maxProfit);

%function knapsack DP solution 

function maxProfit =knapsack01(weights,values,capacity)
  n=length(weights);

  dp=zeros(n+1,capacity+1);

  for i=1:n
       for w = 0:capacity
           if weights(i)<=w
               include = dp(i,w-weights(i)+1)+values(i);
               exclude=dp(i,w+1);
               dp(i+1,w+1)=max(include,exclude);
           else
               dp(i+1,w+1)=dp(i,w+1);
           end
       end
  end

  maxProfit=dp(n+1,capacity+1);
end