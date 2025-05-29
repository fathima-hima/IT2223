num=input('Enter a number to find the factorial: ');
fact=1;
for i=1:num
    fact =fact*i;
end

fprintf('Factorial of %d is :%d',num,fact);