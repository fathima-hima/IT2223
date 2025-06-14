for variable=1:10
    disp(variable)
end 

for variable=1:2:15
    disp(variable)
end


sum=0;
for i=1:10
    sum=sum+i;
    
end
disp("Sum of numbers from 1 to 10 = "+sum)

factorial=1;
for j=1:5
    factorial=factorial*j;
end
disp("Factorial = "+factorial)

x=10;

disp(['The number is:',num2str(x)])

disp("The number is :"+x)
disp('The number is :'+x)
fprintf('The number is: %d',x)
y=sprintf('The number is: %d',x)
disp(y)
