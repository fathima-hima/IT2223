function fact = factorial(n)

    if n<0
        fprintf('Can not find factorial for negative numbers');
    elseif n==0 || n==1
         fact=1;
    else
        fact = n * factorial(n-1);
 
    end
    fprintf('Factorial of %d is :%d\n',n,fact);
end