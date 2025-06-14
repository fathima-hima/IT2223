arr=[3,5,7,9,11,13];
target=9;
n=length(arr);
ifFound=false;

for i=1:n
    if (arr(i)==target)
        fprintf('The target %d is found at index %d.\n :',target,i);
        ifFound=true;
        break;   
    end
end

if ~ifFound
    disp('The target elemnt is not found');
end