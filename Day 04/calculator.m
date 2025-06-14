num1=input('Enter number 1 : ');
num2=input('Enter number 2 : ');
result=0;

op=input('Enter an operator(+ - * /) :', 's');

switch op
    case '+'
        result = num1+num2;
        fprintf('Result: %.2f\n',result);
    case '-'
        result = num1-num2; 
        fprintf('Result: %.2f\n',result);
    case '*'
        result = num1*num2;
        fprintf('Result: %.2f\n',result);
    case '/'
        if num2 ~=0
            result = num1/num2;
            fprintf('Result: %.2f\n',result);
        else
             disp('Error:division by zero');
        end
    otherwise
        disp('Invalid operatpor');
end
